class HomeController < ApplicationController
  include HomeHelper
  def index
    require 'nokogiri'
    require 'open-uri'
    drive_time = fiveoneone_api
    @current_traffic = @results.xpath("/paths/path[1]/currentTravelTime").text
    @normal_traffic = @results.xpath("/paths/path[1]/typicalTravelTime").text

    ## FOR MAPQUEST
    # drive_time = mapquest_api
    # @current_condition = drive_time["route"]["realTime"]/60
    # @normal_condition = drive_time["route"]["time"]/60
  end
end
