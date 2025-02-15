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
    [Documentation]    Tests the foundational function of creating a password, used as a starting point for more complex user-specific tests.
    Given I am on the Register page
    And I have entered a valid username
    When I enter a valid password
    And Click on the register button
    Then I should see a message confirming successful registration
    And I should be redirected to the login page

Create Invalid Password
    [Tags]    Kelley
    [Documentation]    Tests the foundational function of creating an invalid password, assures the user cannot create a password outside of the system's guidelines.
    Given I am on the Register page
    And I have entered a valid username
    When I enter an invalid password
    And Click on the register button
    Then I should see an error message
     
Register A Username With Special Characters
    [Tags]    Kelley
    [Documentation]    Tests that a user is able to register a username with special characters. This applies the the needed "-" symbol used in one of our test cases. 
    Given I am on the Register page
    When I enter a username using special characters
    And I enter a valid password
    And Click on the register button
    Then I should see a message confirming successful registration
    And I should be redirected to the login page

Register username with numbers
    [Tags]             Victor    Kelley_documentation
    [Documentation]    Tests that a user is able to register a username that includes numbers.
    Given I am on the Register page
    When I enter a username using numbers
    And I enter a valid password
    And submit the form
    Then I should see a message confirming successful registration
    And I should be redirected to the login page
