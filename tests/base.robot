*** Settings ***
Name             Base
Documentation    General tests not specific to a user story
Library          SeleniumLibrary
Library          OperatingSystem
Resource         ../resources/base.resource
Variables        ../resources/variables_base.py


*** Test Cases ***
Create Valid Password
    [Tags]    Kelley
    Given I am on the Register page
    And I have entered a valid username
    When I enter a valid password
    And Click on the register button
    Then I should see a message confirming successful registration
    And I should be redirected to the login page

Create Invalid Password
    [Tags]    Kelley
    Given I am on the Register page
    And I have entered a valid username
    When I enter an invalid password
    And Click on the register button
    Then I should see an error message
     
Register A Username With Special Characters
    [Tags]    Kelley
    Given I am on the Register page
    When I create a username using special characters
    And I enter a valid password
    And Click on the register button
    Then I should see a message confirming successful registration
    And I should be redirected to the login page

