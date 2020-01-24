*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
RegTest
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\drivers\chromedriver.exe"
    open browser    ${url}   ${browser}
    maximize browser window
    ${time}= get selenium timeout
    log to console    ${time}
    set selenium timeout    10 seconds
    wait until page contains    Registration
    selecr radio button    Gender   M
    input text  name:FirstName    David
    input text  name:LastName    John
    input text  name:Email   ppp@gmail.com
    input text  name:Password   11111
    input text  name:ConfirmPassword   11111
    ${speed} = get selenium speed
    log to console    ${speed}

*** Keywords ***