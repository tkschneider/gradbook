# author: Max Barvian
class InternshipsController < ApplicationController
  def index
    @internships  = GivingBack.internship.where(approved: true)
  end
end
