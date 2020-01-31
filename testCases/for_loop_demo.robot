*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ForLoop1
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\drivers\chromedriver.exe"

    : FOR    ${i}    IN RANGE    1 10
    \    LOG TO CONSOLE    ${i}

ForLoop2
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\drivers\chromedriver.exe"

    : FOR    ${i}    IN    1 2 3 4 5 6 7 8
    \    LOG TO CONSOLE    ${i}

ForLoop3withList
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\drivers\chromedriver.exe"

    @{items}    create list   1 2 3 4 5 6 7 8
    : FOR    ${i}    IN    @{items}
    \    LOG TO CONSOLE    ${i}

ForLoop4
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\drivers\chromedriver.exe"

    : FOR    ${i}    IN    john david smith scott
    \    log to console   ${i}

ForLoop5
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\drivers\chromedriver.exe"
    @{namesList}    create list    john david smith scott
    : FOR    ${i}    IN    @{namesList}
    \    log to console   ${i}

ForLoop6
    # create webriver chrome  executable_path="C:\Users\pmarchenko\Documents\Ptestpy\RobotTests\drivers\chromedriver.exe"
    @{items}    create list    1 2 3 4 5 6 7 8
    : FOR    ${i}    IN    @{items}
    \    log to console   ${i}
    \ exit for loop if   ${i}==3

*** Keywords ***