*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/login_resources.robot
Suite Setup  Open my Browser
Suite Teardown  Close Browsers
Test Template    Invalid login


*** Test Cases ***      username      password
TC1 user with empty pass    a@i.ua   ${EMPTY}
TC2 user with wrong pass    a@i.ua   dfdsdsf
TC3 wrong user with right pass   ewdrewrew   1234
TC4 wrong user with empty pass   ewdrewrew   ${EMPTY}

*** Keywords ***
Invalid login
    [Arguments]   ${username}    ${password}
    Input username    ${username}
    Input password    ${password}
    click login button
    Error message should be visible