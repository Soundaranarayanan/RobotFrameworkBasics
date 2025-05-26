*** Settings ***
Documentation    Test to validate logout functionality
Library    SeleniumLibrary
Test Setup    Open the browser with URL

Test Teardown    Close the browser Session

Resource    ../Resources/GenericResources.robot
Resource    ../Resources/LoginResources.robot
Resource    ../Resources/LogoutResources.robot

*** Variables ***
${username}    standard_user
${password}    secret_sauce

*** Test Cases ***
Validate Logout Scenario
    [Tags]    logout

    LoginResources.Fill the login form    ${username}    ${password}
    LogoutResources.Click Menu Button
    LogoutResources.Click Logout Button
    LogoutResources.Verify Logout Done
