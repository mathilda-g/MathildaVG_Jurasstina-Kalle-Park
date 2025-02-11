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
