# author: Max Barvian
class GivingBackController < ApplicationController
  def new

  end

  def create
    @opportunity = GivingBack.new(opportunity_params)

    if @opportunity.save
      flash[:success] = "Opportunity submitted!"
      redirect_to '/giving_back/new'
    else
        flash[:alert] = "The opportunity could not be submitted at this time. Please try again."
    end
  end

  private

  def opportunity_params
    params.require(:giving_back).permit(:subject, :position, :description, :type)
  end
end
