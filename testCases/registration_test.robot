*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/login_keyword.robot

*** Variables ***
${LOGIN URL}  http://www.newtours.demoaut.com/
# headless mode
${BROWSER}  headlesschrome
${user}    tutorial
${pwd}    tutorial

*** Test Cases ***
Login Test
# Below only example. Not completed.
    Open my browser    ${LOGIN URL}    ${BROWSER}

## CI configs:
## Build: Execute Windows batch file(shell script for unix) add:
###cd C:\\User\.....\RobotTests
###run.but
#### or just add all instad of but file.
