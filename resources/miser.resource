*** Settings ***
Library          SeleniumLibrary
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

