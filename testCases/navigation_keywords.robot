*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://google.com

*** Test Cases ***
NavigationTest
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\drivers\chromedriver.exe"
    open browser    ${url}   ${browser}
    ${loc}= get location
    log to console ${loc}

    go to    http://bing.com   chrome
    ${loc}= get location
    log to console ${loc}

    go back
    ${loc}= get location
    log to console ${loc}

    sleep 3
    close browser

*** Keywords ***