Feature: Checking if asteroid link works correctly

  Scenario: when i click on the asteroid link in the homepage it takes me to the correct website
    Given I am already at the homepage
    When I click on the asteroid link
    Then I should be taken to the correct website
