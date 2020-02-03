*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://testautomationpractice.blogspot.com

*** Test Cases ***
TableValidations
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\drivers\chromedriver.exe"

    open browser    ${url}   ${browser}
    maximize browser window
    ${rows}= get element count    xpath://span[@class="context-menu-one btn btn-neutral"].........
    ${cols}= get element count    xpath://span[@class="context

    log to console ${rows}
    log to console ${cols}

    ${data}= get text      xpath://span[@///.../tbody/tr[5]/td[1]
    log to console ${data}

    table column should contain    xpath://span[@///...    2   Author  # 2-second column has name  Author
    table row should contain    xpath://span[@///...    4   Author  # 4-fourth row has name  Learn JS
    table cell should contain    xpath://span[@///...    5   2  Mukesh  # 5 row 2- column has name  Learn Mukesh
    table header should contain    xpath://span[@///...    Bookname


    close browser


*** Keywords ***