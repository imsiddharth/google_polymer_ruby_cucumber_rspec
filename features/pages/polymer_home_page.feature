@home
Feature: Polymer Home Page
  Go to www.polymer-project.org
  validate the title

  Scenario: User should go to www.polymer-project.org
    Given I open the browser
    When I navigate to polymer home page
    Then I verify title