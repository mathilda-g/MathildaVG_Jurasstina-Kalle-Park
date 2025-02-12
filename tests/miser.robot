*** Settings ***
Name             Miser
Documentation    Tests for Snåla-Kalle
Library          SeleniumLibrary
Resource         ../resources/base.resource
Resource         ../resources/miser.resource
Variables        ../resources/variables_base.py
Variables        ../resources/variables_miser.py

*** Test Cases ***

No Discount on VIP Adult Entry Ticket
    [Tags]    Kelley
    Given I am logged in as "Ståla-Nalle"
    When I navigate to the Buy Tickets page
    And I add a VIP Adult ticket to my cart
    And Navigate to the Cart page
    Then The total price should not reflect a ticket discount

No Discount on Adult Entry Ticket
    [Tags]    Kelley
    Given I am logged in as "Ståla-Nalle"
    When I navigate to the Buy Tickets page
    And I add a Regular Adult ticket to my cart
    And Navigate to the Cart page
    Then The total price should not reflect a ticket discount