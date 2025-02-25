*** Settings ***
Name             VG_del_Mathilda_Grund
Documentation    Testsvit för VG-delen Mathilda Grund  
...              Acceptanskiriterier: Användare ska kunna registrera ett unikt användarnamn på hemsidan: Testfall 1, 2, 3 
...              En användare med Regular biljett ska inte kunna boka en safari på en helg. Testfall: 4
...              Och man ska inte kunna boka en safari för ett datum som redan passerat. Testfall: 5
Library          SeleniumLibrary
Resource         resources/VG_del_MG.resource
Resource         resources/base.resource
Resource         ../resources/base.resource
Test Setup       Open Browser    ${url}    ${BROWSER}
Test Teardown    Close Browser

*** Test Cases ***
Register an already existing usernamesource venv/bin/activate

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
    Then I should see a empty username error 

Register with empty username and valid password
    [Tags]     Mathilda
    [Documentation]   Test to make sure that when the user clicks on Register button without a username, 
    ...               the system should focus on the username field.
    Given I am on the Register page
    When I try to register with empty username and valid password
    And Click on the register button
    Then the focus should be on the username field
    
Book safari on a weekend with Adult Regular ticket
     [Tags]     Mathilda
     [Documentation]   Test to make sure a user with Regular ticket can't book a safari on a weekend.
     Given I am logged in as Mathilda
     And I have a Regular Adult ticket in my cart
     And I am on the safari page
     When I add the Herbivore Tour safari on a weekend date to my cart     
     Then I should see an book safari on a weekend error message 

Book safari on a past date
     [Tags]    Mathilda
     [Documentation]    Test to make sure a user can't book a safari on a past date.
     Given I am logged in as Mathilda
     And I have a VIP Adult ticket in my cart
     And I am on the safari page
     When I add the Herbivore Tour on a past date to my cart
     Then I should see a book safari on a past date error message

    


    




