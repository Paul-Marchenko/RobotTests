*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${LOGIN URL}  http://www.newtours.demoaut.com/
${BROWSER}  chrome


*** Keywords ***
Open my Browser
    [Arguments]    ${appurl}   ${appbrowser}
    open browser    ${LOGIN URL}   ${BROWSER}
    maximize browser window
    ${title}= get title
    [[Return]  ${title}

Close Browsers
    close all browsers

Open Login Page
    go to    ${LOGIN URL}

Input username
     [Arguments]    ${usernsme}
     input text   id:Email    ${usernsme}

Input password
     [Arguments]    ${password}
     input text   id:password   ${password}

Click login button
     click element  xpath://...

Click logout link
     click link  Logout

Error message should be visible
     page should contain  Login was unsuccessful

Dashboard page should be visible
    page should contain  Dashboard
