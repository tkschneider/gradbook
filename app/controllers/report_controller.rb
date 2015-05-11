class ReportController < ApplicationController
  def index
  end
  def show
    @report_type = params[:report_type]

    case @report_type
    when "1"
      @report_header = "Date Entered"
    when "2"
      @report_header = "Graduation Class Year"
    when "3"
      @report_header = "Graduate Degree Program"
    when "4"
      @report_header = "Employer Name"
    when "5"
      @report_header = "Survey Taken"
    when "6"
      @report_header = "Users Giving Back"
    else
      @report_header = "Unknown"
    end

  end
end
