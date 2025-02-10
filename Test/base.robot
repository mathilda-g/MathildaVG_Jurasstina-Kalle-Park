*** Settings ***
Library    SeleniumLibrary
Variables   base.py

*** Test Cases ***
Test variables
    Open Browser    ${url}    firefox
    Click Link    ${register_link}
