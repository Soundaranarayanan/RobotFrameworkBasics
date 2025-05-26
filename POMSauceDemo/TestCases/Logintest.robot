*** Settings ***
Documentation    Tests to Login to Login Page
Library    SeleniumLibrary
Test Setup    Open the browser with URL
Test Teardown    Close the browser Session
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/LoginResources.robot
Library    DataDriver    file=../Resources/TestDataLogin.xlsx    sheet_name=Sheet1
Test Template    Validate Login Scenarios

*** Variables ***
${username}
${password}

*** Test Cases ***
Validate Login with    ${username}    ${password}
    [Tags]    login

*** Keywords ***
Validate Login Scenarios
    [Arguments]    ${username}    ${password}
    LoginResources.Fill the login form    ${username}    ${password}

    IF    '${username}' == ''
        LoginResources.Verify the error message is displayed for Blank Username


    ELSE IF    '${password}' == ''
        LoginResources.Verify the error message is displayed for Blank Password


    ELSE IF    '${username}' == 'standard_user'
        LoginResources.Verify the product title

    ELSE IF    '${username}' == 'locked_out_user'
        LoginResources.Verify the error message is displayed for lockedoutuser

    ELSE IF    '${username}' == 'performance_glitch_user'
        LoginResources.Verify the product title

        
    ELSE IF    '${username}' == 'problem_user'
        LoginResources.Verify the error message is displayed for wrong Credentials    
    END
