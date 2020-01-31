*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.newtours.demoaut.com/

*** Test Cases ***
TC1
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\drivers\chromedriver.exe"

    ${PageTitle}= launchBrowser    ${url}   ${browser}
    log to console  ${PageTitle}
    log    ${PageTitle} # to report
    input text   name:userName    mercury
    input text   name:userName    mercury


    close browser


*** Keywords ***
launchBrowser
    [Arguments]    ${appurl}   ${appbrowser}
    open browser    ${appurl}   ${appbrowser}
    maximize browser window
    ${title}= get title
    [[Return]  ${title}