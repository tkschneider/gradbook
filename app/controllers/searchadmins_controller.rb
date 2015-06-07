class SearchadminsController < ApplicationController
  before_action :set_searchadmin, only: [:show, :edit, :update, :destroy]

  # GET /searchadmins
  # GET /searchadmins.json
  def index
    @showResult = false
    if !(params[:q].blank?)
      @showResult = true#code
    end
    @search = Login.search(params[:q])
    @searchadmin = @search.result
    @search.build_condition if @search.conditions.empty?
  end
end