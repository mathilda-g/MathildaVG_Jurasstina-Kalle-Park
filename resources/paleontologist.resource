*** Settings ***
Library          SeleniumLibrary
Variables        ../resources/variables_base.py

*** Keywords ***

I am on the Register page
    [Tags]    Kelley
    Open Browser    ${url}    ${BROWSER}
    Click Element    ${register_link}
    Wait Until Element Is Visible    ${register_section}
I have entered a valid username
    [Tags]    Kelley
    Input Text    ${register_username_input}    ${username_with_letters}

I enter a valid password
    [Tags]    Kelley
    Input Text    ${register_password_input}    ${password_long}

Click on the register button
    [Tags]    Kelley
    Click Button    ${register_button}


