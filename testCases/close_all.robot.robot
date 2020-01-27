*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#${browser}  chrome
#${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
MyTestCase
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\drivers\chromedriver.exe"

    open browser    http://demowebshop.tricentis.com/register  chrome
    maximize browser window


    open browser    http://automationpractice.com/index.php  chrome
    maximize browser window

    close all browsers


*** Keywords ***