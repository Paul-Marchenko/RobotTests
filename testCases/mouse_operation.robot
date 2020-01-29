*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://swinsl.github.io/jQuery-contextMenu/demo.html

*** Test Cases ***
MouseActions
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\drivers\chromedriver.exe"
    # Right click action
    open browser    ${url}   ${browser}
    maximize browser window

    open context menu    xpath://span[@class="context-menu-one btn btn-neutral"]
    sleep 3

   # Double click action
    go to    http://....   ${browser}
    maximize browser window
    double click element    xpath://span[@class.......
    sleep 3

    # Drag and drop action
    go to    http://....   ${browser}
    maximize browser window
    drag and drop    id:box6 id:box106
    sleep 5

    close browser


*** Keywords ***