*** Settings ***
Library          SeleniumLibrary
Variables        resources/variables_base.py

*** Keywords ***
I am on the ${page_name} page
    [Tags]    Kelley    Victor_refactored
    Set Test Variable    ${page}    ${page_name}
    Click Link    ${${page}_link}
    Wait Until Element Is Visible    ${${page}_section}

I enter username ${username}
    [Tags]    Victor
    Input Text    ${${page}_username_input}    ${username}

I enter a valid password
    [Tags]    Kelley    Victor_refactored
    Input Password    ${${page}_password_input}    ${password_long}

submit the form
    [Tags]    Victor
    Submit Form    ${${page}_form}

I should be redirected to the ${page_name} page
    [Tags]    Kelley    Victor_refactored
    Wait Until Element Is Visible    ${${page_name}_section}
    Set Test Variable    ${page}    ${page_name}

I should be logged in
    [Tags]    Victor
    Wait Until Element Is Visible    ${logout_link}

I am registered as ${username}
    [Tags]    Victor
    I have the register page open
    And I enter username ${username}
    And a valid password
    And submit the form
    And I should be redirected to the login page

I am logged in as ${username}
    [Tags]    Victor
    I am registered as ${username}
    And I enter username ${username}
    And a valid password
    And submit the form
    And I should be redirected to the login page

Message Should Be Visible
    [Arguments]    ${error_message_element}    ${error_message_text}
    Wait Until Element Is Visible    ${error_message_element}
    Element Text Should Be    ${error_message_element}    ${error_message_text}
   
I have entered a valid username
    [Tags]    Kelley
    Input Text    ${register_username_input}    ${username_with_letters}

I create a username using special characters
    [Tags]    Kelley
    Input Text    ${register_username_input}    ${username_with_special_characters}

I enter an invalid password
    [Tags]    Kelley
    Input Text    ${register_password_input}    ${password_short}

Click on the register button
    [Tags]    Kelley
    Click Button    ${register_button}

I should see a message confirming successful registration
    [Tags]    Kelley
    Message Should Be Visible    ${register_message}    ${register_success_message}
    
I should see an error message
    [Tags]    Kelley
    Message Should Be Visible    ${register_message}   ${register_error_short_password}
