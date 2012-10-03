Feature:
  As an application user
  I want to enter my name
  So I can be greeted by my phone

  Background:
   Given the application is in initial state

  Scenario: No text entered
    Given the text input field is empty
    And I press the "Hello" button
    Then I should see the greeting "Hello, World!"

  Scenario: Name is entered
    Given I type 'Paul' into the text input field
    And I press the "Hello" button
    Then I should see the greeting "Hello, Paul!"
