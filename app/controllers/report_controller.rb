# Created by Brett Bush

# Report SQL Queries
# (1) Date Entered Query
# User.where('orders.created_at' => (params[:month])..Time.now.midnight))
#
# (2) Graduation Class Year Query
#
#
# (3) Graduate Degree Program Query
#
#
# (4) Employer Name Query
#
#
# (5) Survey Taken Query
#
#
# (6) Users Giving Back Query
#
#
# (7) Survey Results
#
#
# (8) User Survey Results
#
#
# (9) Survey Completion
#
#

class ReportController < ApplicationController

  def index
  end
  def show

    respond_to do |format|
      format.html do
        @report_id = params[:report_id]
        @report_header = params[:report_name]

        # Switch case by report_id
        case @report_id

        # Date Entered Report
        when "1"
          @users = User.all

        # Graduation Class Year Report
        when "2"
          @users = User.all

        # Graduate Degree Program Report
        when "3"
          @users = User.all

        # Employer Name Report
        when "4"
          @users = User.all

        # Survey Taken Report
        when "5"
          @users = User.all

        # Users Giving Back Report
        when "6"
          @users = User.all

        # Survey Results
        when "7"

        # User Survey Results
        when "8"

        # Survey Completion
        when "9"

        # Unknown Report
        else

        end
      end
      format.xls do
        @report_id = params[:report_id]

        # Switch case by report_id
        case @report_id

        # Date Entered Report
        when "1"
          @users = User.all
          #send_data @users.to_csv(col_sep: "\t")
        # Graduation Class Year Report
        when "2"
          @users = User.all
          #send_data @users.to_csv(col_sep: "\t")
        # Graduate Degree Program Report
        when "3"
          @users = User.all
          #send_data @users.to_csv(col_sep: "\t")
        # Employer Name Report
        when "4"
          @users = User.all
          #send_data @users.to_csv(col_sep: "\t")
        # Survey Taken Report
        when "5"
          @users = User.all
          #send_data @users.to_csv(col_sep: "\t")
        # Users Giving Back Report
        when "6"
          @users = User.all
          #send_data @users.to_csv(col_sep: "\t")

        # Survey Results
        when "7"

        # User Survey Results
        when "8"

        # Survey Completion
        when "9"

        # Unknown Report
        else

        end
      end
      #format.pdf do
      #  pdf = Prawn::Document.new
      #  pdf.text "Test"
      #  send_data pdf.render, filename: 'report.pdf', type: 'application/pdf'
      #end
    end
  end
  def create
    #@saved_list = SavedList.new(login_id: current_user.id, list_name: params[:saved_list_name], date_saved: Time.now.to_date)

    #for()

    #if @saved_list.save
      flash[:success] = params[:saved_list_name] + " list successfully saved."
      redirect_to :action => 'index'
    #else
    #  render :action => 'index'
    #end
  end
end
