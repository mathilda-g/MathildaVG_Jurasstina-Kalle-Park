*** Settings ***
Library          SeleniumLibrary
Variables        ../resources/variables_base.py

*** Keywords ***

Type In Element
    [Arguments]    ${id_element}    ${text_to_write}
    Input Text    ${id_element}    ${text_to_write}

Message Should Be Visible
    [Arguments]    ${error_message_element}    ${error_message_text}    ${timeout}
    Wait Until Element Is Visible    ${error_message_element}    ${timeout}
    Element Text Should Be    ${error_message_element}    ${error_message_text}

I am on the Register page
    [Tags]    Kelley
    Open Browser    ${url}    ${BROWSER}
    Click Element    ${register_link}
    Wait Until Element Is Visible    ${register_section}    ${standard_timeout}
   
I have entered a valid username
    [Tags]    Kelley
    Type In Element    ${register_username_input}    ${username_with_letters}

I create a username using special characters
    [Tags]    Kelley
    Type In Element    ${register_username_input}    ${username_with_special_characters}

I enter a valid password
    [Tags]    Kelley
    Type In Element    ${register_password_input}    ${password_long}

I enter an invalid password
    [Tags]    Kelley
    Type In Element    ${register_password_input}    ${password_short}

Click on the register button
    [Tags]    Kelley
    Click Button    ${register_button}

I should see a message confirming successful registration
    [Tags]    Kelley
    Message Should Be Visible    ${register_message}    ${register_success_message}    ${standard_timeout}
I should see an error message
    [Tags]    Kelley
    Message Should Be Visible    ${register_message}   ${register_error_short_password}    ${standard_timeout}

I should be redirected to the login page
    [Tags]    Kelley
     Wait Until Element Is Visible    ${login_section}    ${standard_timeout}

    

