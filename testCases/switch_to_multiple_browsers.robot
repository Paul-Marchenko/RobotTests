*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://google.com

*** Test Cases ***
MultipleBrowsers
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\drivers\chromedriver.exe"
    open browser    ${url}   ${browser}
    maximize browser window

    sleep 3

    open browser    http://bing.com   chrome
    maximize browser window

    switch browser    1
    ${title1}= get title
    log to console    ${title1}

    switch browser    2
    ${title2}= get title
    log to console    ${title2}

    sleep 3
    close all browsers

*** Keywords ***

