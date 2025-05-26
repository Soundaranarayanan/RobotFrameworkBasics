*** Settings ***
Documentation    Page objects and keywords for menu navigation
Library           SeleniumLibrary

*** Variables ***
${menu}                xpath://button[@id='react-burger-menu-btn']
${allItems}            xpath://a[@id='inventory_sidebar_link']
${about}               xpath://a[@id='about_sidebar_link']
${resetAppState}       xpath://a[@id='reset_sidebar_link']
${sauceLab_url}        https://saucelabs.com/
${product}             xpath://div[text()='Sauce Labs Backpack']
${url}                 https://www.saucedemo.com/inventory.html
${addToCart}           xpath://button[@id='add-to-cart-sauce-labs-backpack']
${shoppingCart}    xpath://a[@class='shopping_cart_link']

*** Keywords ***
Click Menu Button
    Click Element    ${menu}
    Sleep    1

Click Product
    Click Element    ${product}
    Sleep    1

Click All Item Button
    Click Element    ${allItems}
    Sleep    1
    Wait Until Location Contains    ${url}

Click About Button
    Click Element    ${about}
    Sleep    2
    Wait Until Location Contains    saucelabs.com
    Location Should Contain    saucelabs.com

Click Add To Cart Sauce Labs Backpack
    Click Element    ${addToCart}

Click Reset App State
    Click Element    ${resetAppState}
    Click Element    ${shoppingCart}
    Page Should Not Contain    Sauce Labs Backpack
    




