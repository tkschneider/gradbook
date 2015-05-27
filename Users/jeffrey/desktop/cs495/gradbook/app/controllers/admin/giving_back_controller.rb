# author: Max Barvian
class Admin::GivingBackController < AdminController
  def index
    @opportunities = GivingBack.all
  end

  def update
    @opportunity = GivingBack.find(params[:id])

    if @opportunity.update(opportunity_params)
      flash[:success] = "Opportunity updated."
    else
      flash[:alert] = "The opportunity could not be updated."
    end

    redirect_to admin_giving_back_index_path
  end

  private

  def opportunity_params
    params.require(:giving_back).permit(:approved, :completed)
  end
end
