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