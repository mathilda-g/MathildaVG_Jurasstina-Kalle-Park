*** Settings ***
Library          SeleniumLibrary
Variables        resources/variables_base.py
Variables        resources/variables_miser.py

*** Keywords ***
the total price should be ${ticket_price} and not reflect a ticket discount
    [Tags]    Kelley
    [Documentation]    Extracts the total price in the user's cart via xpath and compares it to the expected price,
    ...                asserting they should contain the same values.
    ${cart_total}    Get Text    xpath=//*[@id="cart-total"]
    Should Contain    ${cart_total}    ${ticket_price}




    





