*** Settings ***
Library     SeleniumLibrary

# *** Variables ***
${browser}  chrome
${url}  https://seleniumhq.github.io/selenium/docs/api/java/index

*** Test Cases ***
Frames
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\chromedriver.exe"
    open browser    ${url}   ${browser}
    maximize browser window

    sleep 3

    select frame    packageListFrame    #id name Frame
    click link   org.openqa.selenium
    unselect frame

    sleep 3

    select frame    packageFrame
    click link   Webdriver
    unselect frame

    sleep 3

    select frame    classFrame
    click link   Index
    unselect frame
    close browser

*** Keywords ***
