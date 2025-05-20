*** Settings ***
Documentation    Keywords and locators for verifying the shopping cart count.
Library    SeleniumLibrary

*** Variables ***
${addToCart}    xpath://button[@id='add-to-cart-sauce-labs-backpack']
${addToCart2}   xpath://button[@id='add-to-cart-sauce-labs-bike-light']
${shoppingCartBadge}    xpath://div[@id='shopping_cart_container']/a//span

*** Keywords ***
Click Add To Cart Button
    Click Button    ${addToCart}

Verify Shopping Cart Icon Displays Count
    [Arguments]    ${expected_count}
    Element Text Should Be    ${shoppingCartBadge}    ${expected_count}
