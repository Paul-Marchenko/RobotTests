*** Settings ***


*** Test Cases ***
TC1 User RegistrationTest
    [Tags]  sanity
    log to console    This is user reg test
    log to console    user registrarion test is over

TC2 LoginTest
    [Tags]  regression
    log to console    This is login test
    log to console    Login test is over

TC3 Change user settings
    [Tags]  regression
    log to console    This is changing user setting test
    log to console    Changing user setting test is over

TC4 LogoutTest
    [Tags]  sanity
    log to console    This is logout test
    log to console    Logout test is over


# run in console: robot --include=sanity test_cases\tagging.robot
# run in console: robot -i sanity -i regression test_cases\tagging.robot
# run in console: robot -e regression test_cases\tagging.robot  ## e-exclude