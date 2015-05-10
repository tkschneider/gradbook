class ReportController < ApplicationController
  def index
  end
  def show
    @report_type = params[:report_type]
  end
end
