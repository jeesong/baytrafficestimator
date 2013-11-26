class ApplicationController < ActionController::Base
  protect_from_forgery
  def mapquest_api
    directions = Typhoeus.get(
      "http://www.mapquestapi.com/directions/v2/route?key=Fmjtd%7Cluubn90z29%2Cr0%3Do5-902wda&from=San+Diego,CA&to=Los+Angeles,CA"
    )

    @results = JSON.parse(directions.body)
    return @results
  end

  def fiveoneone_api
    url = "http://services.my511.org/traffic/getpathlist.aspx?token=9e56dd14-d11d-49a8-9040-2d86898f6a7d?&o=1222&d=347"
    @results = Nokogiri::XML(open(url))
    return @results
  end
end
