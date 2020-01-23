*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\chromedriver.exe"
    open browser    ${url}   ${browser}
    loginToApplication
    close browser

*** Keywords ***
loginToApplication
    click link  xpath://a[@class='ico-login']
    input text  id:Email    ppp@gmail.com
    input text  id:Password    1234
    click element   xpath://input[@class=button-1 login-button']