class HomeController < ApplicationController
  def index
  end

  def generate_report
    ReportJob.perform_later
    render plain: "Report generated"
  end
end
