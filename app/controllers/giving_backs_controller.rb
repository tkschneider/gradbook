# author: Maxwell Barvian
class GivingBacksController < AuthenticatedController
  def new
    @opportunity = GivingBack.new(type: GivingBack.types.has_key?(params[:type]) ? params[:type] : 'other')
  end

  def create
    @opportunity = GivingBack.new(opportunity_params)

    if @opportunity.save
      # flash[:success] = "Opportunity submitted!"
      render 'submitted'
    else
      render 'new'
    end
  end

  private

  def opportunity_params
    params.require(:giving_back).permit(:subject, :position, :description, :type, :contact_first_name, :contact_last_name, :contact_email)
  end
end
