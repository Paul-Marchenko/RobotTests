# added to plugin roborframework-datadriver
*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    ..test_data/login_data.xlsx   sheet_name=Sheet1
Resource  ../Resources/login_resources.robot
Suite Setup  Open my Browser
Suite Teardown  Close Browsers
Test Template    Invalid login


*** Test Cases ***      username      password
TC1loginwitgExcel    using     ${username}    ${password}


*** Keywords ***
Invalid login
    [Arguments]   ${username}    ${password}
    Input username    ${username}
    Input password    ${password}
    click login button
    Error message should be visible
