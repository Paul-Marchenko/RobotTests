*** Settings ***
Library    SeleniumLibrary
Variables   ../PageObjects/locators.py


*** Keywords ***
Open my Browser
    [Arguments]   ${siteUrl}    ${browser}
    open browser ${siteUrl}    ${browser}
    maximize browser window

Enter UserName
    [Arguments]   ${username}
    Input Text    ${txt_loginUserName}    ${username}


Enter Passw
    [Arguments]   ${password}
    Input Text    ${txt_pass}    ${password}


Click SignIn
    click  button    ${btn_signIn}


Verify Succesfull login
    title should be Find a Flight: Mercury Tours:

Close my browsers
    close all browsers