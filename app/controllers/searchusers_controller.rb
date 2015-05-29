class SearchusersController < ApplicationController
  # GET /searchusers
  # GET /searchusers.json
  def index
    @search = User.search(params[:q])
    @searchusers = @search.result
  end
  
  def search
    index
    render :index
  end
end