Given("I start at the home page") do
  get_planet_homepage.visit_home_page
end

Given("I click a link to go to the planets page") do
  get_planet_homepage.click_planets_link
end

Given("I click on a already existing planet") do
  get_planet_homepage.click_test_for_delete
end

When("I click delete in the options") do
  get_planet_homepage.click_delete_button
end

Then("I should see a success message") do
  expect(create_new_planet_page.check_message).to eq("You have successfully deleted a planet ×")
end
