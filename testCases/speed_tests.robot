*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
RegText
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\drivers\chromedriver.exe"
    ${speed} = get selenium speed
    log to console    ${speed}
    open browser    ${url}   ${browser}
    maximize browser window

    set selenium speed   3 seconds
#    sleep 5
    selecr radio button    Gender   M
    input text  name:FirstName    David
    input text  name:LastName    John
    input text  name:Email   ppp@gmail.com
    input text  name:Password   11111
    input text  name:ConfirmPassword   11111
    ${speed} = get selenium speed
    log to console    ${speed}

*** Keywords ***