class SearchusersController < ApplicationController
  # GET /searchusers
  # GET /searchusers.json
  def index
    @search = Login.search(params[:q])
    @searchusers = @search.result
  end
  
  def search
    index
    render :index
  end
  
  def searchbar
    @search = Login.search(params[:q])
    @searchusers = @search.result
  end
end