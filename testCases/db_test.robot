# add to plugin robotframwework-databaselibrary (restart)
# add to plugin PyMySQL (restart)
*** Settings ***

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
# single records
#       ${output}= Execute SQL String    Insert into person values(101, "john", "c");

       ${output}= Execute SQL String    ./test_data/mydb_person_insertData.sql
       log to console    ${output}
       should be equal as strings    ${output}    None

Check David record present in Person Table
       check if exists in database   select id from mydb.peron where first_name="David";

Check Jio record Not present in Person Table
       check if not exists in database   select id from mydb.peron where first_name="Jio";

Check Pesron Table exists in mydb database
       table must exist   person


Verify Row Count is Zero
      row count is 0    select id from mydb.peron where first_name="xyz";

Verify Row Count is Equal to Some Value
      row count is equal to x    select id from mydb.peron where first_name="xyz";   1


Verify Row Count is Greater than Some Value
      row count is greater than x    select id from mydb.peron where first_name="xyz";    0

Verify Row Count is Less than Some Value
      row count is less than x    select id from mydb.peron where first_name="xyz";    5

Update record in person table
        ${output}= Execute SQL String    Update mydb.person set first_name="Jio"v where id=104;
        log to console    ${output}
        should be equal as strings    ${output}    None

Retrieve record in person table
        ${queryResults}=query   select * from mydb.peron;

        log to console    many ${queryResults}

Delete record in person table
        ${output}= Execute SQL String  delete from mydb.peron;
        should be equal as strings    ${output}    None
        log to console   ${output}
