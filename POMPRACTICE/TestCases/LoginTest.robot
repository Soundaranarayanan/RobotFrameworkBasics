*** Settings ***
Resource    ../Resources/LoginResources.robot
Library     DataDriver    file=../TestData/LoginTestData.xlsx
Test Template    Perform Login

Suite Setup     Open Browser To Login Page
Suite Teardown  Close the Browser

*** Test Cases ***
Login Test with Excel Data
    [Template]    Perform Login
    ${email}    ${password}

*** Keywords ***
Perform Login
    [Arguments]    ${email}    ${password}
    Input Email    ${email}
    Input passwrd  ${password}
    Click Login Button
    Run Keyword And Continue On Failure    Verify Login Success Or Failure

Verify Login Success Or Failure
    Run Keyword And Return Status    Page Should Contain Element    ${MY_ACCOUNT_HEADER}
    
    Page Should Contain Element    ${WARNING_MESSAGE}
