# author: Maxwell Barvian
class GivingBacksController < AuthenticatedController
  # Creates an action to use for the autocomplete Company textfield
  autocomplete :company, :name, column_name: 'company_name'

  def new
    # Create an empty opportunity with the type from the URL
    @opportunity = GivingBack.new(type: GivingBack.types.has_key?(params[:type]) ? params[:type] : 'other')
    @opportunity.build_company if @opportunity.needs_company?
  end

  def create
    @opportunity = GivingBack.new(opportunity_params)
    # Check if a company with the givne name already exists, and if so,
    # use it instead
    if @opportunity.company && company = Company.find_by(company_name: @opportunity.company.company_name)
      @opportunity.company = company
    end

    if @opportunity.save
      # flash[:success] = "Opportunity submitted!"
      render 'submitted'
    else
      render 'new'
    end
  end

  private

  def opportunity_params
    params.require(:giving_back).permit(:type, :subject, :position,
      :requirements, :description,
      :contact_first_name, :contact_last_name, :contact_email,
      company_attributes: [:company_name]
    )
  end
end
