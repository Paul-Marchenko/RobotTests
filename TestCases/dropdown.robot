*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Handling dropDowns and Lists
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\chromedriver.exe"
    open browser    ${url}   ${browser}
    maximize browser window

    ## dropdown commands
    select from list by label   continents    Australia
    sleep 3
    select from list by index   continents    6
#    select from list by value   continents    value

    ## list box commands
    select from list by label    selenium_commands    Switch Commands
    select from list by label    selenium_commands    WebElement Commands
    sleep 3
    unselect from list by label    selenium_commands    Switch Commands

*** Keywords ***
