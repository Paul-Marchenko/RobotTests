*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
RegularTest
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\drivers\chromedriver.exe"
    open browser    ${url}   ${browser}
    maximize browser window

    ${implicittime}= get selenium implicit wait
    log to console    ${implicittime}
    set selenium implicit wait    10 seconds

    ${implicittime}= get selenium implicit wait
    log to console    ${implicittime}


    selecr radio button    Gender   M
    input text  name:FirstName    David
    input text  name:LastName    John
    input text  name:Email   ppp@gmail.com
    input text  name:Password   11111
    input text  name:ConfirmPassword   11111

*** Keywords ***