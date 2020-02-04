# added to plugin roborframework-datadriver
*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    ..test_data/login_data.csv
Resource  ../Resources/login_resources.robot
Suite Setup  Open my Browser
Suite Teardown  Close Browsers
Test Template    Invalid login


*** Test Cases ***      username      password
TC1loginwitgCsv   using     ${username}    ${password}


*** Keywords ***
Invalid login
    [Arguments]   ${username}    ${password}
    Input username    ${username}
    Input password    ${password}
    click login button
    Error message should be visible
