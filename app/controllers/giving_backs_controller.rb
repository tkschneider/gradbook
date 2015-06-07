# author: Maxwell Barvian
class GivingBacksController < AuthenticatedController
  autocomplete :company, :name, column_name: 'company_name'

  def new
    @opportunity = GivingBack.new(type: GivingBack.types.has_key?(params[:type]) ? params[:type] : 'other')
    @opportunity.build_company
  end

  def create
    @opportunity = GivingBack.new(opportunity_params)
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
