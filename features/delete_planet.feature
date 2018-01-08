Feature: Delete a planet

  Scenario: Checking if a planet gets deleted
    Given I start at the home page
    And I click a link to go to the planets page
    And I click on a already existing planet
    When I click delete in the options
    Then I should see a success message
