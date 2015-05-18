class SearchadminsController < ApplicationController
  before_action :set_searchadmin, only: [:show, :edit, :update, :destroy]

  # GET /searchadmins
  # GET /searchadmins.json
  def index
    @search = Searchadmin.search(params[:q])
    @searchadmin = @search.result
    @search.build_condition
    # if @search.conditions.empty?
  end

  # GET /searchadmins/1
  # GET /searchadmins/1.json
  def show
  end

  # GET /searchadmins/new
  def new
    @searchadmin = Searchadmin.new
  end

  # GET /searchadmins/1/edit
  def edit
  end

  # POST /searchadmins
  # POST /searchadmins.json
  def create
    @searchadmin = Searchadmin.new(searchadmin_params)

    respond_to do |format|
      if @searchadmin.save
        format.html { redirect_to @searchadmin, notice: 'Searchadmin was successfully created.' }
        format.json { render :show, status: :created, location: @searchadmin }
      else
        format.html { render :new }
        format.json { render json: @searchadmin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /searchadmins/1
  # PATCH/PUT /searchadmins/1.json
  def update
    respond_to do |format|
      if @searchadmin.update(searchadmin_params)
        format.html { redirect_to @searchadmin, notice: 'Searchadmin was successfully updated.' }
        format.json { render :show, status: :ok, location: @searchadmin }
      else
        format.html { render :edit }
        format.json { render json: @searchadmin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /searchadmins/1
  # DELETE /searchadmins/1.json
  def destroy
    @searchadmin.destroy
    respond_to do |format|
      format.html { redirect_to searchadmins_url, notice: 'Searchadmin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_searchadmin
      @searchadmin = Searchadmin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def searchadmin_params
      params[:searchadmin]
    end
end
