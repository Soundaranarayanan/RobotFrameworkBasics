*** Settings ***
Resource    ../Resources/LoginResources.robot
Test Setup    Open Browser To Login Page
Test Teardown    Close the Browser

*** Test Cases ***
Login With Valid Credentials
    Input Email    2k21eee40@kiot.ac.in
    Input passwrd   KIOT
    Click Login Button
    Verify Login Success

Login With Invalid Credentials
    Input Email    invaliduser@example.com
    Input passwrd    wrongpassword
    Click Login Button
    Verify Login Failure
