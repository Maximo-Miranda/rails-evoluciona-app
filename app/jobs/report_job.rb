class ReportJob < ApplicationJob
  queue_as :report

  def perform(*args)
    generate_database_report
  end

  private

  def generate_database_report
    20.times do
      puts "Generating report #{Time.now.to_i}"
      sleep(2)
    end
  end
end
