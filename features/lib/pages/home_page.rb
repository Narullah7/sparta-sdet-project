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

  def test_for_delete
    find("a", :text => "Sun")
  end

  def click_test_for_delete
    test_for_delete.click
  end

  def delete_button
    first('input[type="submit"]')
  end

  def click_delete_button
    delete_button.click
  end

  def asteroid_link
    find("#link-to", match: :first)
  end

  def click_asteroid_link
    asteroid_link.click
  end

end
