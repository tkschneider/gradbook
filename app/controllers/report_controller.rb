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

        # Graduation Class Year Report
        when "2"

        # Graduate Degree Program Report
        when "3"

        # Employer Name Report
        when "4"

        # Survey Taken Report
        when "5"

        # Users Giving Back Report
        when "6"

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
          @users = User.where("first_name = ?", "Brett")
          send_data @users.to_csv(col_sep: "\t")
        # Graduation Class Year Report
        when "2"
          @users = User.where("first_name = ?", "Brett")
          send_data @users.to_csv(col_sep: "\t")
        # Graduate Degree Program Report
        when "3"
          @users = User.where("first_name = ?", "Brett")
          send_data @users.to_csv(col_sep: "\t")
        # Employer Name Report
        when "4"
          @users = User.where("first_name = ?", "Brett")
          send_data @users.to_csv(col_sep: "\t")
        # Survey Taken Report
        when "5"
          @users = User.where("first_name = ?", "Brett")
          send_data @users.to_csv(col_sep: "\t")
        # Users Giving Back Report
        when "6"
          @users = User.where("first_name = ?", "Brett")
          send_data @users.to_csv(col_sep: "\t")
        # Unknown Report
        else

        end
      end
      format.pdf do
        pdf = Prawn::Document.new
        pdf.text "Test"
        send_data pdf.render, filename: 'report.pdf', type: 'application/pdf'
      end
    end
  end
end
