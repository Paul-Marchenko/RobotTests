*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://opensource-demo.organgehrmlive.com/

*** Test Cases ***
LoginTest
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\drivers\chromedriver.exe"
    open browser    ${url}   ${browser}
    maximize browser window
    input text    id:txtUsername  Admin
    input text    id:txtPassword  123

#    capture element screenshot    xpath://*[@id="divLogo"]/img    C:/Users/pmarchenko/Documents/Ptestpy/RobotTests/logo.png
#    capture page screenshot    C:/Users/pmarchenko/Documents/Ptestpy/RobotTests/Page.png

    capture element screenshot    xpath://*[@id="divLogo"]/img    logo.png
    capture page screenshot    Page.png

    close browser

*** Keywords ***