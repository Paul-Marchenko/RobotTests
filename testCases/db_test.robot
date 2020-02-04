# add to plugin robotframwework-databaselibrary (restart)
# add to plugin PyMySQL (restart)
*** Settings ***
Library  DatabaseLibrary
Library  OperatingSystem
Library    SeleniumLibrary
Library    DataDriver    ..test_data/login_data.csv
Resource  ../Resources/login_resources.robot
Suite Setup  Connect To Database    pymysql    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
Suite Teardown  Disconnect From Database
Test Template    Invalid login

*** Variables **

${DBName}    mydb
${DBUser}    root
${DBPass}    root
${DBHost}    127.0.0.1
${DBPort}    3306


*** Test Cases ***
# https://franz-see/github/io/Robotframework/Database-Library - for keywords
Create person table
       ${output}= Execute SQL String     Create table person(id integer, first_name varchar(20), last_name varchar(20));
       log to console    ${output}
       should be equal as strings    ${output}    None

Inserting Data in person Table
       ${output}= Execute SQL String    Insert into person values(101, "john", "c");
       log to console    ${output}
       should be equal as strings    ${output}    None

