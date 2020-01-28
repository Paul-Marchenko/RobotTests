*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demo.automationtesting.in/Windows.html

*** Test Cases ***
TabbedWindows
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\drivers\chromedriver.exe"
    open browser    ${url}   ${browser}
    click element    xpath://*[@id="Tabbbed"]/a/button
    select window    title=Sakinalium | Home
    click element    xpath://*[@id="container"]/header/div/div/.....
    sleep 3

*** Keywords ***

