*** Settings ***
Name             VG_del_Mathilda_Grund
Documentation    Testsvit för VG-delen Mathilda Grund
Library          SeleniumLibrary
Resource         resources/base.resource
Resource         resources/VG_del_MG.resource
Test Setup       Open Browser    ${url}    ${BROWSER}
Test Teardown    Close Browser

