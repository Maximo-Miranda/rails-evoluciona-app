class HomeController < ApplicationController
  def index
    @tasks = Rails.cache.fetch("tasks_all", expires_in: 1.minute) do
      Task.all
    end
  end
  def generate_report
    ReportJob.perform_later
    render plain: "Report generated"
  end
end
