*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\drivers\chromedriver.exe"
    open browser    ${url}   ${browser}
    maximize browser window
    set selenium speed      2seconds

    select radio button     sex     Female
    select radio button     exp     5

    select checkbox     BlackTea
    select checkbox     RedTea

    unselect checkbox     BlackTea

    close browser

*** Keywords ***
loginToApplication
