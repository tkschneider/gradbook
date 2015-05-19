class ReportController < ApplicationController
  def index
  end
  def show
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
end
