# author: Maxwell Barvian
class Admin::GivingBackController < AdminController
  def index
    @opportunities = GivingBack.pending
  end

  def completed
    @opportunities = GivingBack.completed
    render 'index'
  end

  def hidden
    @opportunities = GivingBack.hidden
    render 'index'
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
    params.require(:giving_back).permit(:approved, :completed, :hidden)
  end
end
