Feature: User have to register
  Background:
    Given User on the registration page

  Scenario: New user Registration form page fill
    And User fill the first name input field with "Name"
    And User fill the last name input field with "Surname"
    And User add an email in the email input field
    And User fill the Adress1 input field with "Pasku iela 15-2"
    And User select "Latvia" in the country dropdown
    And User select "Daugavpils" in the region dropdown
    And User fill the city input field with "Daugavpils"
    And User fill the ZIP code input field with "LV-5404"
    And User fill the login input field
    And User fill the password input field with "qwerty321Q"
    And User fill the password confirm input field with "qwerty321Q"
    And User select newsletter subscription "1"
    And User select privacy policy
    And I press Continue
    And I check that I created new account