class HomeController < ApplicationController
  include HomeHelper
  def index
    drive_time = mapquest_api
    @current_condition = drive_time["route"]["realTime"]/60
    @normal_condition = drive_time["route"]["time"]/60
  end
end
