*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://swinsl.github.io/jQuery-contextMenu/demo.html

*** Test Cases ***
ScrollingJS
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\drivers\chromedriver.exe"

    open browser    ${url}   ${browser}
    maximize browser window
#    execute javascript   window.scrollTo(0,2500)
##    scroll element into view   xpath://div.....

    execute javascript   window.scrollTo(0,document.body.scrollHeight))  # end of the page
    sleep 3
    execute javascript   window.scrollTo(0,-document.body.scrollHeight))  # top of the page

    close browser

*** Keywords ***