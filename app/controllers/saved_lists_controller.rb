# Created by Brett Bush

class SavedListsController < ApplicationController
  before_action :set_saved_list, only: [:show, :edit, :update, :destroy]

  # GET /saved_lists
  # GET /saved_lists.json
  def index
    @saved_lists = SavedList.where("login_id = ?", current_login.id)
  end

  # GET /saved_lists/1
  # GET /saved_lists/1.json
  def show
    respond_to do |format|
      format.html do
        @saved_list = SavedList.find(params[:id])
        @users = User.joins('INNER JOIN saved_list_users ON saved_list_users.user_id = users.id').where('saved_list_users.saved_list_id = ?', @saved_list.id)
      end
      format.xls do
        @saved_list = SavedList.find(params[:id])
        @users = User.joins('INNER JOIN saved_list_users ON saved_list_users.user_id = users.id').where('saved_list_users.saved_list_id = ?', @saved_list.id)

        # Create file name, downcase it, and replace all invalid file name characters with underscores
        headers["Content-Disposition"] = "attachment; filename=\"" + @saved_list.list_name.downcase.gsub(/[\x00\/\\:\*\?\"<>\| ]/, '_') + "_" + DateTime.now.strftime("%m%d%Y_%I%M%p") + "\""
      end
    end
  end

  # GET /saved_lists/new
  def new
    @saved_list = SavedList.new
  end

  # GET /saved_lists/1/edit
  def edit
  end

  # POST /saved_lists
  # POST /saved_lists.json
  def create
    @saved_list = SavedList.new
    @saved_list.login_id = params[:login_id]
    @saved_list.list_name = params[:list_name]
    @saved_list.saved_user_list = true
    @saved_list.date_saved = params[:date_saved]

    respond_to do |format|
      if @saved_list.save

        @user_ids = params["user_ids"]
        @user_ids.each do |user_id|
          SavedListUser.create(saved_list_id: @saved_list.id, user_id: user_id)
        end

        format.html { redirect_to @saved_list, notice: 'Saved list was successfully created.' }
        format.json { render :show, status: :created, location: @saved_list }
      else
        format.html { render :new }
        format.json { render json: @saved_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saved_lists/1
  # PATCH/PUT /saved_lists/1.json
  def update
    respond_to do |format|
      if @saved_list.update(saved_list_params)
        format.html { redirect_to @saved_list, notice: 'Saved list was successfully updated.' }
        format.json { render :show, status: :ok, location: @saved_list }
      else
        format.html { render :edit }
        format.json { render json: @saved_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saved_lists/1
  # DELETE /saved_lists/1.json
  def destroy
    @saved_list = SavedList.find(params[:id])
    @saved_list_users = SavedListUser.where("saved_list_id = ?", @saved_list.id)

    @saved_list_users.each do |saved_list_user|
      saved_list_user.destroy
    end

    @saved_list.destroy
    respond_to do |format|
      format.html { redirect_to :action => 'index', notice: 'Saved list was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saved_list
      @saved_list = SavedList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saved_list_params
      params[:saved_list]
    end
end
