*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\drivers\chromedriver.exe"
    open browser    ${url}   ${browser}
    maximize browser window
    title should be nopCommerce demo store
    click link  xpath://a[@class='ico-login']
    ${"email.txt"} set variable id:Email

    element should be enabled ${"email.txt"}
    element should be visible ${"email.txt"}
    # element should not be visible ${"email.txt"}

    input text  ${"email.txt"}    ppp@gmail.com
    sleep 5
    clear element text  ${"email.txt"}
    sleep 3
    close browser

*** Keywords ***
