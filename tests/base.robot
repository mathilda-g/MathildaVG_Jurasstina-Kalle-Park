*** Settings ***
Name             Base
Documentation    General tests not specific to a user story
Library          SeleniumLibrary
Library          OperatingSystem
Resource         ../resources/base.resource
Variables        ../resources/variables_base.py


*** Test Cases ***
Create Valid Password
    [Tags]    Kelley
   GIVEN I am on the Register page
   AND I have entered a valid username
   WHEN I enter a valid password
   AND Click on the register button
   THEN I should see a message confirming successful registration
   AND I should be redirected to the login page

Create Invalid Password
    [Tags]    Kelley
    GIVEN I am on the Register page
    AND I have entered a valid username
    WHEN I enter an invalid password
    AND Click on the register button
    THEN I should see an error message
     
Register A Username With Special Characters
    [Tags]    Kelley
    GIVEN I am on the Register page
    WHEN I create a username using special characters
    AND I enter a valid password
    AND Click on the register button
    THEN I should see a message confirming successful registration
    AND I should be redirected to the login page

