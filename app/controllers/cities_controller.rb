class CitiesController < ApplicationController
  def show
    require 'nokogiri'
    require 'open-uri'
    @traveltimes = []
    @origin = City.find(params[:id])
    @cities = City.all
    @cities.each do |city|
      drive_time = fiveoneone_api(@origin.node, city.node)
      current_traffic = @results.xpath("/paths/path[1]/currentTravelTime").text
      normal_traffic = @results.xpath("/paths/path[1]/typicalTravelTime").text
      @traveltimes << [current_traffic, normal_traffic]
    end
  end
end
