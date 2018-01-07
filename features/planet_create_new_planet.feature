Feature: create new planet

  Scenario: inputting details, I can successfully create a new planet and check it exists
    Given I am at the home page
    And I go to the planets new page
    And I input title details
    And I input fact input number one
    And I input fact input number two
    And I input fact input number three
    And I input a image
    And I input a second image
    When I try to save post
    Then I should see my created planet on the page
