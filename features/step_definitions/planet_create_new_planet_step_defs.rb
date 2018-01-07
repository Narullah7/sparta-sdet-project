Given("I am at the home page") do
  get_planet_homepage.visit_home_page
end

Given("I go to the planets new page") do
  get_planet_homepage.click_planets_new_link
end

Given("I input title details") do
  create_new_planet_page.enter_title("Fahim bullah")
end

Given("I input fact input number one") do
  create_new_planet_page.fill_in_body("This is my test")
end

Given("I input fact input number two") do
  create_new_planet_page.fill_in_second_body("This is my test2")
end

Given("I input fact input number three") do
  create_new_planet_page.fill_in_third_body("This is my third test")
end

Given("I input a image") do
  create_new_planet_page.fill_in_image_one("https://i.pinimg.com/736x/ba/55/01/ba55018d05a6d483209ed6bb2911b69b--polka-dot-patterns-card-patterns.jpg")
end

Given("I input a second image") do
  create_new_planet_page.fill_in_image_two("http://ak4.picdn.net/shutterstock/videos/20692594/thumb/1.jpg")
end

When("I try to save post") do
  create_new_planet_page.click_save_post
end

Then("I should see my created planet on the page") do
  expect(create_new_planet_page.check_message).to eq("You have successfully added a new planet ×")
end
