*** Settings ***
Library          SeleniumLibrary
Library    XML
Variables        ../resources/variables_base.py
Variables        ../resources/variables_miser.py

*** Keywords ***

I am logged in as "Ståla-Nalle"
    [Tags]    Kelley
    Open Browser    ${url}    ${BROWSER}
    Click Element    ${register_link}
    Input Text    ${register_username_input}    ${miser_username} 
    Input Text    ${register_password_input}    ${miser_password}
    Click Button    ${register_button}
    Wait Until Element Is Visible    ${login_section}
    Input Text    ${login_username_input}    ${miser_username}
    Input Text    ${login_password_input}    ${miser_password}
    Click Button    ${login_button}
    Wait Until Element Is Visible    ${home_page_text}    

I navigate to the Buy Tickets page
    [Tags]    Kelley
    Click Element    ${buy_tickets_link}
    Wait Until Element Is Visible    ${tickets_section}

I add a ${ticket_category} ${ticket_type} ticket to my cart
    [Tags]    Kelley
    Select From List By Value    ${tickets_category_select}    ${ticket_category}
    Select From List By Value    ${tickets_type_select}    ${ticket_type}
    Click Button    ${tickets_button}