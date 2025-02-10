*** Settings ***
Name             Paleontologist
Documentation    Description goes here
Library          SeleniumLibrary
Resource         resources/paleontologist.resource
Resource         resources/base.resource
Variables        resources/variables_base.py
Variables        resources/variables_paleontologist.py

*** Test Cases ***
first
    Log    Hello World
