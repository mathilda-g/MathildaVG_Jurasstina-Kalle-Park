*** Settings ***
Library          SeleniumLibrary
Variables        resources/variables_base.py

*** Keywords ***

I register with ${username} and a valid password
   [Tags]    Mathilda
   Input Text    ${${page}_username_input}    ${username}
   Input Text    ${${page}_password_input}    ${password_long}

I try to register again with ${username} and a valid password
    [Tags]   Mathilda
    Input Text    ${${page}_username_input}    ${username}
    Input Text    ${${page}_password_input}    ${password_long}
    Click Button    ${register_button}

I should see a registration error
    [Tags]    Mathilda
    Message Should Be Visible    ${register_message}   ${register_error_username_already_exists}