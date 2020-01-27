*** Settings ***
Library     SeleniumLibrary

# *** Variables ***
${browser}  chrome
${url}  http://testautomationpractice.blogspot.com/

*** Test Cases ***
Handling
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\chromedriver.exe"
    open browser    ${url}   ${browser}
    maximize browser window
    click element xpath://*[@id="HTML9"]/div[1/button]  #open alert

    sleep 3
    handle alert    accept
    # handle alert    dismiss  # close alert
    alert should be present    Press a button!



*** Keywords ***
