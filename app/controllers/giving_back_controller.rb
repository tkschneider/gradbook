class GivingBackController < ApplicationController
  def index
    @opportunities = GivingBack.all
  end

  def new

  end

  def create
    # render plain: params[:giving_back].inspect
    @opportunity = GivingBack.new(opportunity_params)

    @opportunity.save
    redirect_to action: 'index'
  end

  private

  def opportunity_params
    params.require(:giving_back).permit(:subject, :position, :description)
  end
end
