Feature: Edit a planet

  Scenario: updating information from an existing planet, checking if it updates
    Given I am in the home page
    And I go to the planets page
    And I click on any planet
    And I click update in the options
    And I update the title
    And I update fact one
    When I click save post
    Then I should see my updated planet
