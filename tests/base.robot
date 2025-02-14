*** Settings ***
Name             Base
Documentation    Grupp 5, Victor, Kelley och Mathilda
...              General tests not specific to a user story
Library          SeleniumLibrary
Resource         resources/base.resource
Test Setup       Open Browser    ${url}    ${BROWSER}
Test Teardown    Close Browser


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
    When I enter a username using special characters
    And I enter a valid password
    And Click on the register button
    Then I should see a message confirming successful registration
    And I should be redirected to the login page

Register username with numbers
    [Tags]    Victor
    Given I am on the register page
    When I enter a username using numbers
    And I enter a valid password
    And submit the form
    Then I should see a message confirming successful registration
    And I should be redirected to the login page
