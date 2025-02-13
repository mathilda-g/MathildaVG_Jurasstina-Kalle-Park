*** Settings ***
Library          SeleniumLibrary
Variables        resources/variables_base.py
Variables        resources/variables_miser.py

*** Keywords ***
I add a ${ticket_category} ${ticket_type} ticket to my cart
    [Tags]    Kelley
    Select From List By Value    ${tickets_category_select}    ${ticket_category}
    Select From List By Value    ${tickets_type_select}    ${ticket_type}
    Click Button    ${tickets_button}
    Handle Alert

The total price should not reflect a ticket discount
    [Tags]    Kelley



    





