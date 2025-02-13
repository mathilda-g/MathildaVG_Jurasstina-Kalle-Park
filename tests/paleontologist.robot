*** Settings ***
Name             Paleontologist
Documentation    Tests for paleontologist
Library          SeleniumLibrary
Resource         resources/paleontologist.resource
Resource         resources/base.resource
Test Setup       Open Browser    ${url}    ${BROWSER}
Test Teardown    Close Browser

*** Test Cases ***
Register user Stina-Palle
    [Tags]    Victor
    [Documentation]    Registers user Stina-Palle with a valid password and checks that a success message is shown and that the user is redirected to the login page
    Given I am on the register page
    When I enter username Stina-Palle
    And I enter a valid password
    And submit the form
    Then I should see a message confirming successful registration
    And I should be redirected to the login page

Login user Stina-Palle
    [Tags]    Victor
    [Documentation]    Registers and logs in as Stina-Palle and checks that the login is successful
    Given I am registered as Stina-Palle
    And I am on the login page
    When I enter username Stina-Palle
    And I enter a valid password
    And submit the form
    Then I should be logged in
