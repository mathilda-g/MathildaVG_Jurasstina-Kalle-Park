*** Settings ***
Library          SeleniumLibrary
Variables        resources/variables_base.py

*** Keywords ***
I have the ${page_name} page open
    Set Test Variable    ${page}    ${page_name}
    Click Link    ${${page}_link}
    Wait Until Element Is Visible    ${${page}_section}

I enter username ${username}
    Input Text    ${${page}_username_input}    ${username}

a valid password
    Input Password    ${${page}_password_input}    ${password_long}

submit the form
    Submit Form    ${${page}_form}

I should see a message confirming a successful registration
    Element Should Contain    ${register_message}    ${register_success_message}

I should be redirected to the ${page_name} page
    Wait Until Element Is Visible    ${${page_name}_section}
    Set Test Variable    ${page}    ${page_name}

I should be logged in
    Wait Until Element Is Visible    ${logout_link}

I am registered as ${username}
    I have the register page open
    And I enter username ${username}
    And a valid password
    And submit the form
    And I should be redirected to the login page

I am logged in as ${username}
    I am registered as ${username}
    And I enter username ${username}
    And a valid password
    And submit the form
    And I should be redirected to the login page
