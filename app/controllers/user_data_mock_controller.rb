class UserDataMockController < ApplicationController
  def index
    20.times do
      RandomNumberJob.perform_later
      ReportJob.perform_later
    end
  end
end
