*** Settings ***
Name             Base
Documentation    General tests not specific to a user story
Library          SeleniumLibrary
Variables        resources/variables_base.py

*** Test Cases ***
Test variables
    [Documentation]    testing that variables in variables_base.py are working
    Open Browser    ${url}    ${BROWSER}
    Click Link    ${register_link}
    Input Text    ${register_username_input}    ${username_with_letters}
    Input Password    ${register_password_input}    ${password_long}
    Submit Form    ${register_form}
    Wait Until Element Is Visible    ${login_section}
    Input Text    ${login_username_input}    ${username_with_letters}
    Input Password    ${login_password_input}    ${password_long}
    Submit Form    ${login_form}
    Wait Until Element Is Visible    ${logout_link}
    Click Link    ${buy_tickets_link}
    Select From List By Value    ${tickets_type_select}    ${tickets_adult_ticket}
    Select From List By Value    ${tickets_category_select}    ${tickets_regular_ticket}
    Submit Form    ${tickets_form}
    Handle Alert
    Select From List By Value    ${tickets_type_select}    ${tickets_child_ticket}
    Select From List By Value    ${tickets_category_select}    ${tickets_vip_ticket}
    Submit Form    ${tickets_form}
    Handle Alert
    Click Link    ${cart_link}
    Element Should Contain    ${cart_items}    Regular Adult Ticket
    Element Should Contain    ${cart_items}    VIP Child Ticket
    
