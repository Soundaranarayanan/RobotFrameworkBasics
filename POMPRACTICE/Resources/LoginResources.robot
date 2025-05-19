*** Settings ***
Resource    ../Locators/LoginPageLocators.robot
Library     SeleniumLibrary

*** Keywords ***
Open Browser To Login Page
    Open Browser    https://ecommerce-playground.lambdatest.io/index.php?route=account/login    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    ${EMAIL_FIELD}    timeout=10s

Input Email
    [Arguments]    ${email}
    Input Text    ${EMAIL_FIELD}    ${email}

Input passwrd
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}

Click Login Button
    Click Button    ${LOGIN_BUTTON}

Verify Login Success
    Page Should Contain Element    ${MY_ACCOUNT_HEADER}

Verify Login Failure
    Page Should Contain Element    ${WARNING_MESSAGE}

Close the Browser
    Close All Browsers
