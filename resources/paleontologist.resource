*** Settings ***
Library          SeleniumLibrary
Variables        resources/variables_base.py
Variables        resources/variables_paleontologist.py

*** Keywords ***
I am shown a summary when I checkout
    Click Button    ${cart_checkout_button}
    Handle Alert
