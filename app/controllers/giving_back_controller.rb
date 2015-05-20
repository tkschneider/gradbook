# author: Max Barvian
class GivingBackController < ApplicationController
  def new

  end

  def create
    # render plain: params[:giving_back].inspect
    @opportunity = GivingBack.new(opportunity_params)

    @opportunity.save
    redirect_to action: 'new'
  end

  private

  def opportunity_params
    params.require(:giving_back).permit(:subject, :position, :description)
  end
end
