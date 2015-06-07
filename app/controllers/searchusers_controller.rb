class SearchusersController < ApplicationController
  # GET /searchusers
  # GET /searchusers.json
  def index
    @showResult = false
    if !(params[:q].blank?)
      @showResult = true#code
    end
    @search = Login.joins('LEFT OUTER JOIN users ON users.login_id = logins.id').where("users.searchable = '1'").search(params[:q])
    @searchusers = @search.result
  end
  
  def search
    index
    render :index
  end
end