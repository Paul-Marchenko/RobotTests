*** Settings ***
Library    SeleniumLibrary
Variables   ../PageObjects/locators.py


*** Keywords ***
# Below only example. Not completed.
Open my Browser
    [Arguments]   ${siteUrl}    ${browser}
    open browser ${siteUrl}    ${browser}
    maximize browser window

Enter UserName
    [Arguments]   ${username}
    Input Text    ${txt_loginUserName}    ${username}
