*** Settings ***
Name             VG_del_Mathilda_Grund
Documentation    Testsvit för VG-delen Mathilda Grund
Library          SeleniumLibrary
Resource         resources/VG_del_MG.resource
Resource         resources/base.resource
Test Setup       Open Browser    ${url}    ${BROWSER}
Test Teardown    Close Browser

*** Test Cases ***
Register an already existing username
    [Tags]       Mathilda
    [Documentation]   Test to make sure the system doesn't allow a username that already exists.
    Given I am on the Register page
    When I register with MathildaG and a valid password
    And Click on the register button
    Then I should see a message confirming successful registration 
    And I should be redirected to the Login page

    Given I am on the Register page
    When I try to register again with MathildaG and a valid password
    Sleep   2s  
    Then I should see a registration error 

Register without filling in username
    [Tags]    Mathilda
    [Documentation]   Test to make sure the system prevents registration with an blank username
    Given I am on the Register page
    When I register with an empty username and a valid password
    And I click on the register button
    Then I should see a popup with the message "Fyll i det här fältet" next to the username field  






