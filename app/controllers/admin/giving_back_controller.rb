# author: Max Barvian
class Admin::GivingBackController < AdminController
  def index
    @opportunities = GivingBack.all
  end
end
