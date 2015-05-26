class SearchadminsController < ApplicationController
  before_action :set_searchadmin, only: [:show, :edit, :update, :destroy]

  # GET /searchadmins
  # GET /searchadmins.json
  def index
    @search = User.search(params[:q])
    @searchadmin = @search.result
    @search.build_condition if @search.conditions.empty?
    #respond_with @searchadmin
  end
end