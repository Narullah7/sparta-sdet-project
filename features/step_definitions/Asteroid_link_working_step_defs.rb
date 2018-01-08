Given("I am already at the homepage") do
  get_planet_homepage.visit_home_page
end

When("I click on the asteroid link") do
  p get_planet_homepage.click_asteroid_link
end

Then("I should be taken to the correct website") do
  expect(current_url).to eq("https://ssd.jpl.nasa.gov/sbdb.cgi?sstr=3795031")
end
