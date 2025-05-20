*** Settings ***
Documentation    Test to validate the Checkout process
Library           SeleniumLibrary
Test Setup        Open the browser with URL
Test Teardown     Close the browser Session
Resource          ../Resources/GenericResources.robot
Resource          ../Resources/LoginResources.robot
Resource          ../Resources/CheckoutResources.robot

*** Variables ***
${username}       standard_user
${password}       secret_sauce

*** Test Cases ***
Validate Successful Checkout Process
    [Tags]    Checkout
    LoginResources.Fill the login form    ${username}    ${password}
    CheckoutResources.Click the Product to add to cart
    CheckoutResources.Click the ShoppingCart Icon
    CheckoutResources.Click Checkout Button
    CheckoutResources.Send Details and click Continue Button
    CheckoutResources.Click Finish button and verify page contains order successful message
