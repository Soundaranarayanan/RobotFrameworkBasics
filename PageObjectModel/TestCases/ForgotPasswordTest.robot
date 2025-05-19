*** Settings ***
Documentation    Test to validate Forgot Your Password Page functionality
Library    SeleniumLibrary
Test Setup    Open the Browser with url
Test Teardown    Close Browser Session
Resource    ../Resources/ForgotPasswordResources.robot
Resource    ../Resources/LoginResources.robot
Resource    ../Resources/GenericResources.robot

*** Test Cases ***
Validate Reset Password Functionality
    [Tags]    Smoke    UAT
    LoginResources.Go to forgot your password page
    ForgotPasswordResources.Verify Forgot Your Password Page Opens
    ForgotPasswordResources.Fill the Forgot Password Page
    ForgotPasswordResources.Verify the message

Validate Cancel functionality
    [Tags]    UAT
    LoginResources.Go to forgot your password page
    ForgotPasswordResources.Verify Forgot Your Password Page Opens
    ForgotPasswordResources.Cancel the Reset Password
    ForgotPasswordResources.Verify that Login Page is displayed