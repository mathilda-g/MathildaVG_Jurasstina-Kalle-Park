*** Settings ***
Name             Miser
Documentation    Tests for Snåla-Kalle
Library          SeleniumLibrary
Resource         resources/base.resource
Resource         resources/miser.resource
Test Setup       Open Browser    ${url}    ${BROWSER}
Test Teardown    Close Browser

*** Test Cases ***

No Discount on VIP Adult Entry Ticket
    [Tags]    Kelley
    Given I am logged in as Ståla-Nalle
    When I navigate to the tickets page
    And I add a VIP Adult ticket to my cart
    And I navigate to the Cart page
    Then the total price should be $100 and not reflect a ticket discount
No Discount on Adult Entry Ticket
    [Tags]    Kelley
    Given I am logged in as Ståla-Nalle
    When I navigate to the tickets page
    And I add a Regular Adult ticket to my cart
    And I navigate to the cart page
    Then the total price should be $50 and not reflect a ticket discount

Register as Ståla-Nalle
    [Tags]    Mathilda
    Given I am on the register page
    When I enter username Ståla-Nalle
    And I enter a valid password
    And Click on the register button
    Then I should see a message confirming successful registration
    And I should be redirected to the login page


No discount on Senior Entry Ticket
   [Tags]       Mathilda    Victor_refactored
   Given I am logged in as Ståla-Nalle
   When I navigate to the tickets page
   And I add a Regular Senior ticket to my cart
   And I navigate to the cart page
   Then the total price should be $40 and not reflect a ticket discount


No discount on VIP Senior Entry Ticket
   [Tags]       Mathilda
   Given I am logged in as Ståla-Nalle
   When I navigate to the tickets page
   And I add a VIP Senior ticket to my cart
   And I navigate to the cart page
   Then the total price should be $80 and not reflect a ticket discount


Registered User Should Not Receive Discount When Purchasing Ticket
    [Tags]       Mathilda    Victor_refactored
    Given I am logged in as Ståla-Nalle
    And I am on the tickets page
    When I add a Regular Adult ticket to my cart
    And I navigate to the Cart page
    Then The total price should be $50 and not reflect a ticket discount
   
