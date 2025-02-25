*** Settings ***
Name             VG_del_Mathilda_Grund
Documentation    Testsvit för VG-delen Mathilda Grund  
...              Acceptanskiriterier: Användare ska kunna registrera ett unikt användarnamn på hemsidan: Testfall 1, 2, 3 
...              Endast användare som har köpt VIP-biljetter ska kunna boka safariturer på helger: Testfall 4, 5
Library          SeleniumLibrary
Resource         resources/VG_del_MG.resource
Resource         resources/base.resource
Resource         ../resources/base.resource
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
    Then I should see a empty username error 

Register with empty username and valid password
    [Tags]     Mathilda
    [Documentation]   Test to make sure that when the user clicks on Register button without a username, 
    ...               the system should focus on the username field.
    Given I am on the Register page
    When I try to register with empty username and valid password
    And Click on the register button
    Then the focus should be on the username field

Book safari on a weekend with Adult VIP-ticket
     [Tags]   Mathilda
     Given I am logged in as Mathilda
     And I have a VIP Adult ticket in my cart
     And I am on the safari page
     When I add the Herbivore Tour with Feeding safari on a weekend date to my cart
     And I navigate to the Cart page
     Then the Herbivore Tour with Feeding should be listed on the cart page

Book safari on a weekend with Adult Regular ticket
     [Tags]     Mathilda
     
    


    




