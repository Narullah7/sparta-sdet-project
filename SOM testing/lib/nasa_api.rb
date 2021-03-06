require 'json'
require 'httparty'

class NasaApi
  include HTTParty
  attr_accessor :demo_key, :current_nasa_day

  base_uri 'https://api.nasa.gov/neo'

  def initialize
    @demo_key = "Ltm5fFmZcRXQf65mldfwWTEtmkU0fsKcUf6OY2oh"
  end

  def get_api_feed(date)
    @current_nasa_day = JSON::parse(self.class.get("/rest/v1/feed?end_date=#{date}&detailed=true&api_key=#{demo_key}").body)
  end

end
