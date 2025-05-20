*** Settings ***
Documentation    Tests to validate each menu option separately
Library          SeleniumLibrary
Test Setup       Open the browser with URL
Test Teardown    Close the browser Session
Resource         ../Resources/GenericResources.robot
Resource         ../Resources/LoginResources.robot
Resource         ../Resources/RemoveProductFromCartResources.robot

*** Variables ***
${username}    standard_user
${password}    secret_sauce
*** Test Cases ***
Validate Remove Button in the Shopping Cart page
    
    LoginResources.Fill the login form    ${username}    ${password}
    RemoveProductFromCartResources.Click Add To Cart Sauce Labs Backpack
    RemoveProductFromCartResources.Click Shopping Cart Icon
    RemoveProductFromCartResources.Click Remove Button
    RemoveProductFromCartResources.Verify product Removed from the Shopping Cart

Validate Remove Button in the product page
     LoginResources.Fill the login form    ${username}    ${password}
     RemoveProductFromCartResources.Click the Sauce Labs Backpack Product
     RemoveProductFromCartResources.Click the Add To Cart Button on the product page
     RemoveProductFromCartResources.Click the Remove Button on the product page
     RemoveProductFromCartResources.Click Shopping Cart Icon
     RemoveProductFromCartResources.Verify product Removed from the Shopping Cart

