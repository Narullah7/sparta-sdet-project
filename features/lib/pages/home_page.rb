require 'capybara'

class PlanetHomePage
  include Capybara::DSL

  def visit_home_page
    visit('/')
  end

  def planets_link
    click_link('Planets')
  end

  def click_planets_link
    planets_link.click
  end

  def planets_new_link
    click_link('New Planets')
  end

  def click_planets_new_link
    planets_new_link.click
  end

  def existing_planet
    find("a", :text => "Pluto")
  end

  def click_existing_planet
    existing_planet.click
  end

  def edit_button
    click_button("Edit")
  end
end
