require_relative '../lib/pages/home_page'
require_relative '../lib/pages/form_page'


module PlanetSite

  def get_planet_homepage
    PlanetHomePage.new
  end

  def create_new_planet_page
    NewPlanetPage.new
  end

end
