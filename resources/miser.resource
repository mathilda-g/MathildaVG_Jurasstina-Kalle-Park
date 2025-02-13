*** Settings ***
Library          SeleniumLibrary
Variables        resources/variables_base.py
Variables        resources/variables_miser.py

*** Keywords ***
I add a ${ticket_category} ${ticket_type} ticket to my cart
    [Tags]    Kelley
    [Documentation]    Adds desired ticket type to cart, utilizing the standard ticket quantity of 1
    Select From List By Value    ${tickets_category_select}    ${ticket_category}
    Select From List By Value    ${tickets_type_select}    ${ticket_type}
    Click Button    ${tickets_button}
    Handle Alert

the total price should be ${ticket_price} and not reflect a ticket discount
    [Tags]    Kelley
    [Documentation]    Extracts the total price in the user's cart via xpath and compares it to the expected price, asserting they should contain the same values.
    ${cart_total}    Get Text    xpath=//*[@id="cart-total"]
    Should Contain    ${cart_total}    ${ticket_price}




    





