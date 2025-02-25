*** Settings ***
Name             VG_del_Mathilda_Grund
Documentation    Testsvit för VG-delen Mathilda Grund
Library          SeleniumLibrary
Resource         resources/VG_del_MG.resource
Resource         resources/base.resource
Resource    ../resources/base.resource
Test Setup       Open Browser    ${url}    ${BROWSER}
Test Teardown    Close Browser

*** Test Cases ***
Register an already existing username
    [Tags]       Mathilda
    [Documentation]   Test to make sure the system doesn't allow a username that already exists. 
    ...               And shows a error message "Username already exists. Please choose another."
    Given I am on the Register page
    When I register with MathildaG and a valid password
    And Click on the register button
    Then I should see a message confirming successful registration 
    And I should be redirected to the Login page

    Given I am on the Register page
    When I try to register again with MathildaG and a valid password
    Sleep   2s  
    Then I should see a registration error 

Register with only spaces in username
    [Tags]    Mathilda
    [Documentation]   Test to make sure the system prevents registration with contains only spaces
    ...               And shows a error message "Please enter both a username and password."
    Given I am on the Register page
    When I try to register with a space in the username and a valid password    
    And Click on the register button
    Sleep   2s
    Then I should see a empty username error 

Register with empty username and valid password
    [Tags]     Mathilda
    [Documentation]   Test to make sure that when the user clicks on Register button without a username, 
    ...               the system should focus on the username field.
    Given I am on the Register page
    When I try to register with empty username and valid password
    And Click on the register button
    Then the focus should be on the username field

Buy  VIP-ticket without as logged out user
    [Tags]    Mathilda
    [Documentation]
    Given I am on the Buy Ticket page
    When 




