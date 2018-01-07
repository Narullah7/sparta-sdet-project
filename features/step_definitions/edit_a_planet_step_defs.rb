Given("I am in the home page") do
  get_planet_homepage.visit_home_page
end

Given("I go to the planets page") do
  get_planet_homepage.click_planets_link
end

Given("I click on any planet") do
  get_planet_homepage.click_existing_planet
end

Given("I click update in the options") do
  get_planet_homepage.edit_button
end

Given("I update the title") do
  create_new_planet_page.enter_title("Pluto - Updated")
end

Given("I update fact one") do
  create_new_planet_page.fill_in_body("Updated body")
end

When("I click save post") do
  create_new_planet_page.click_save_post
end

Then("I should see my updated planet") do
 expect(create_new_planet_page.check_message).to eq("You have successfully updated a planet ×")
end
