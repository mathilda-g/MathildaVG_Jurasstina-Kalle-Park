*** Settings ***
Library          SeleniumLibrary
Variables        resources/variables_base.py
Resource    base.resource

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

I try to register with a space in the username and a valid password 
    [Tags]     Mathilda
    Input Text    ${${page}_username_input}    ${SPACE}
    Input Text    ${${page}_password_input}    ${password_long}

I should see a empty username error 
    [Tags]     Mathilda
    Message Should Be Visible    ${register_message}     ${register_error_no_username_password}

I try to register with empty username and valid password
    [Tags]      Mathilda
    Input Text    ${${page}_username_input}    ${EMPTY}
    Input Text    ${${page}_password_input}    ${password_long}

the focus should be on the username field
    [Tags]     Mathilda
    Element Should Be Focused    id:reg-username

I add the ${safari_type} safari on a weekend date to my cart
    [Tags]     Mathilda
    Set Focus To Element    ${safari_type_select}
    Set Focus To Element    ${safari_date_input}
    Input Text    ${safari_date_input}    ${safari_weekend_date}
    Select From List By Value    ${safari_type_select}    ${safari_type}
    submit the form      

I should see an book safari on a weekend error message
     [Tags]      Mathilda
     Message Should Be Visible    ${safari_message}   ${safari_error_weekend_no_vip}   

I add the ${safari_type} on a past date to my cart
     [Tags]     Mathilda
     Set Focus To Element    ${safari_type_select}
     Set Focus To Element    ${safari_date_input}
     Input Text    ${safari_date_input}    ${safari_past_date}
     Select From List By Value    ${safari_type_select}    ${safari_type}
     submit the form

I should see a book safari on a past date error message
     [Tags]     Mathilda
     Message Should Be Visible    ${safari_message}    ${safari_error_past_date}


