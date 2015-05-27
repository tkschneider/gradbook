class InternshipsController < ApplicationController
  def index
    @internships  = GivingBack.where(approved: true)
  end
end
