*** Settings ***
Documentation    Tests to validate each menu option separately
Library          SeleniumLibrary
Test Setup       Open the browser with URL
Test Teardown    Close the browser Session
Resource         ../Resources/GenericResources.robot
Resource         ../Resources/LoginResources.robot
Resource         ../Resources/MenuNavigationValidation.robot

*** Variables ***
${username}    standard_user
${password}    secret_sauce

*** Test Cases ***
Validate Clicking Menu Button
    [Tags]    Menubutton
    LoginResources.Fill the login form    ${username}    ${password}

    MenuNavigationValidation.Click Menu Button

Validate All Items Button Navigation
    [Tags]    AllitemsButton

    LoginResources.Fill the login form    ${username}    ${password}
    MenuNavigationValidation.Click Product
    
    MenuNavigationValidation.Click Menu Button
    MenuNavigationValidation.Click All Item Button



Validate About Button Navigation
    [Tags]    AboutButton

    LoginResources.Fill the login form    ${username}    ${password}
    MenuNavigationValidation.Click Menu Button
    MenuNavigationValidation.Click About Button
    Go Back

Validate Reset App State Functionality
    [Tags]    ResetButton

    LoginResources.Fill the login form    ${username}    ${password}
    MenuNavigationValidation.Click Add To Cart Sauce Labs Backpack
    MenuNavigationValidation.Click Menu Button
    MenuNavigationValidation.Click Reset App State


