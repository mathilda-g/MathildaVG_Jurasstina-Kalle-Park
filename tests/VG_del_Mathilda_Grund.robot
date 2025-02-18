*** Settings ***
Name             VG_del_Mathilda_Grund
Documentation    Testsvit för VG-delen Mathilda Grund
Library          SeleniumLibrary
Resource         resources/base.resource
Resource         resources/VG_del_MG.resource
Test Setup       Open Browser    ${url}    ${BROWSER}
Test Teardown    Close Browser

*** Test Cases ***

Register an already existing username
[Tags]       Mathilda
[Documentation]    Test to make sure the system doesn't allow a username that already exists
Given I am on the Register page
When I register with "Mathilda98" and a valid password
Then I should get a message confirming successful registration 
And I should be redirected to the Login page
When I try to register again with "Mathilda98" and a valid password 
Then I should get an error message "Username already exists. Please choose another."




