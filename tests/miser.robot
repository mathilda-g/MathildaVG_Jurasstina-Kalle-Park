*** Settings ***
Name             Miser
Documentation    Description goes here
Library          SeleniumLibrary
Resource         resources/base.resource
Resource         resources/miser.resource
Variables        resources/variables_base.py
Variables        resources/variables_miser.py

*** Test Cases ***
first
    Log    Hello World
