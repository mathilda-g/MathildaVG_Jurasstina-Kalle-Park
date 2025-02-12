*** Settings ***
Name             Paleontologist
Documentation    Description goes here
Library          SeleniumLibrary
Resource         ../resources/base.resource
Resource         ../resources/paleontologist.resource
Variables         ../resources/variables_base.py
Variables         ../resources/variables_miser.py

*** Test Cases ***
first
    Log    Hello World
