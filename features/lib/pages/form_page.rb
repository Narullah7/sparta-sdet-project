require 'capybara'

class NewPlanetPage
  include Capybara::DSL

  def visit_new_planets_page
    visit('/planets/new')
  end

  def find_title
    find_field("title")
  end

  def enter_title(title)
    fill_in("title", with: title)
  end

  def find_body
    find_field("body")
  end

  def fill_in_body(body)
    fill_in("body", with: body )
  end

  def find_second_body
    find_field("body2")
  end

  def fill_in_second_body(body)
    fill_in("body2", with: body )
  end

  def find_third_body
    find_field("body3")
  end

  def fill_in_third_body(body)
    fill_in("body3", with: body )
  end

  def find_first_image_field
    find_field("image")
  end

  def fill_in_image_one(image)
    fill_in("image", with: image)
  end

  def find_second_image_field
    find_field("image2")
  end

  def fill_in_image_two(image)
    fill_in("image2", with: image)
  end

  def click_save_post
    click_button("submit-button")
  end

  def check_message
    find("#alert-message").text
  end
end
