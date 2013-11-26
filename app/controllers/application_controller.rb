class ApplicationController < ActionController::Base
  protect_from_forgery
  def mapquest_api
    directions = Typhoeus.get(
      "http://www.mapquestapi.com/directions/v2/route?key=Fmjtd%7Cluubn90z29%2Cr0%3Do5-902wda&from=San+Diego,CA&to=Los+Angeles,CA"
    )

    @results = JSON.parse(directions.body)
    return @results
  end
end
