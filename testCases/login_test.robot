*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/login_keyword.robot

*** Variables ***
${LOGIN URL}  http://www.newtours.demoaut.com/
${BROWSER}  chrome
${user}    tutorial
${pwd}    tutorial

*** Test Cases ***
Login Test
    Open my browser    ${LOGIN URL}    ${BROWSER}
    Enter UserName    ${user}
    Enter Pass    ${pwd}
    Click SignIn
    Verify Succesfull login
    Close my browsers