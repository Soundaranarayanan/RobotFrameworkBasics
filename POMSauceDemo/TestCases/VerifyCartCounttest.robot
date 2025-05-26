*** Settings ***
Documentation    Tests to validate cart count after adding the product to the cart
Library    SeleniumLibrary
Test Setup    Open the browser with URL
Test Teardown    Close the browser Session
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/VerifyCartCountResources.robot

Resource    ../Resources/LoginResources.robot

*** Variables ***
${username}    standard_user
${password}    secret_sauce

*** Test Cases ***
Verify Cart Count Increases After Adding Products
    [Tags]    cartcount
    LoginResources.Fill the login form    ${username}    ${password}
    Sleep    2

    Click Add To Cart Button
    Sleep    2
    Verify Shopping Cart Icon Displays Count    1
