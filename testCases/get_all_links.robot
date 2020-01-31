*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://swinsl.github.io/jQuery-contextMenu/demo.html

*** Test Cases ***
GetAllLinksTests
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\drivers\chromedriver.exe"

    open browser    ${url}   ${browser}
    maximize browser window
    ${allLinksCount}= get element count    xpath://a
    log to console    ${allLinksCount}

    @{linksItems}    create list

    : FOR   ${i}    IN RANGE   1  ${allLinksCount}+1
    \    ${linkText}= get text    xpath:(//a)[${i}]
    \    log to console    ${linkText}


    close browser

*** Keywords ***