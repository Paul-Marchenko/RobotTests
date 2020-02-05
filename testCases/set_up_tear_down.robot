*** Settings ***

Suite Setup  log to console   Opening Browser
Suite Teardown  log to console   Closing Browser
Test Setup  log to console   Login to application
Test Teardown  log to console   Logout from application
Test Template    Invalid login


*** Test Cases ***
TC1 Prepaid Recharge
    log to console    This is prepaid recharge testcase

TC2 Prepaid Recharge
    log to console    This is postpaid recharge testcase

TC3 Prepaid Recharge
    log to console    This is Search testcase

TC4 Prepaid Recharge
    log to console    This is Adv Search testcase