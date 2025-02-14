*** Settings ***
Name             Miser
Documentation    Grupp 5, Victor, Kelley och Mathilda
...              Tests for Snåla-Kalle
Library          SeleniumLibrary
Resource         resources/base.resource
Resource         resources/miser.resource
Test Setup       Open Browser    ${url}    ${BROWSER}
Test Teardown    Close Browser

*** Test Cases ***
Register as Ståla-Nalle
    [Tags]    Mathilda    
    [Documentation]   Mathilda    
    ...   Test to register user with username "Ståla-Nalle" och verify that registration succeed
    ...   After the registration the user should be redirected to the login page
    Given I am on the register page
    When I enter username Ståla-Nalle
    And I enter a valid password
    And Click on the register button
    Then I should see a message confirming successful registration
    And I should be redirected to the login page
    
Login as Ståla-Nalle
    [Tags]    Victor
    [Documentation]   Mathilda   
    ...   Test to login with the user "Ståla-Nalle"   
    ...   The user must be registered before logging in 
    ...   And after successful login the user should be logged in to the system
    Given I am registered as Ståla-Nalle
    And I am on the login page
    When I enter username Ståla-Nalle
    And I enter a valid password
    And submit the form
    Then I should be logged in

No Discount on VIP Adult Entry Ticket
    [Tags]    Kelley
    [Documentation]    Mathilda 
    ...    Test to verify that a logged in user does not receive a discount a VIP Adult entry ticket 
    ...    The total price should remain $100 without any discount applied
    Given I am logged in as Ståla-Nalle
    When I navigate to the tickets page
    And I add a VIP Adult ticket to my cart
    And I navigate to the Cart page
    Then the total price should be $100 and not reflect a ticket discount

No Discount on Adult Entry Ticket
    [Tags]    Kelley
    [Documentation]    Mathilda 
    ...    Test to verify that a logged in user does not receive a discount a Regular Adult entry ticket 
    ...    The total price should remain $50 without any discount applied
    Given I am logged in as Ståla-Nalle
    When I navigate to the tickets page
    And I add a Regular Adult ticket to my cart
    And I navigate to the cart page
    Then the total price should be $50 and not reflect a ticket discount

No discount on Senior Entry Ticket
   [Tags]       Mathilda    Victor_refactored
   [Documentation]     Mathilda 
   ...    Test to verify that a logged in user does not receive a discount a Regular Senior entry ticket 
   ...    The total price should remain $40 without any discount applied
   Given I am logged in as Ståla-Nalle
   When I navigate to the tickets page
   And I add a Regular Senior ticket to my cart
   And I navigate to the cart page
   Then the total price should be $40 and not reflect a ticket discount

No discount on VIP Senior Entry Ticket
   [Tags]       Mathilda
   [Documentation]     Mathilda 
   ...    Test to verify that a logged in user does not receive a discount a VIP Senior entry ticket 
   ...    The total price should remain $80 without any discount applied
   Given I am logged in as Ståla-Nalle
   When I navigate to the tickets page
   And I add a VIP Senior ticket to my cart
   And I navigate to the cart page
   Then the total price should be $80 and not reflect a ticket discount

Registered User Should Not Receive Discount When Purchasing Ticket
    [Tags]       Mathilda    Victor_refactored
    [Documentation]    Mathilda 
    ...    Test to ensure that a registered user does not receive a discount when purchasing a Regular Adult ticket 
    ...    The total price should remain $50 to confirm that no automatic discount is applied
    Given I am logged in as Ståla-Nalle
    And I am on the tickets page
    When I add a Regular Adult ticket to my cart
    And I navigate to the Cart page
    Then The total price should be $50 and not reflect a ticket discount
