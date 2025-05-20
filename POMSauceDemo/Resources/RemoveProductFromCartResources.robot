*** Settings ***
Documentation    Page objects and keywords for menu navigation
Library           SeleniumLibrary
*** Variables ***
${addToCart}           xpath://button[@id='add-to-cart-sauce-labs-backpack']
${shoppingCart}    xpath://a[@class='shopping_cart_link']
${removeButton}    xpath://button[@id='remove-sauce-labs-backpack']
${addToCart2}    xpath://button[@id='add-to-cart']
${removeButton2}    xpath://button[@id='remove']
${product}             xpath://div[text()='Sauce Labs Backpack']
*** Keywords ***
Click Add To Cart Sauce Labs Backpack
    Click Element    ${addToCart}
Click Shopping Cart Icon
    Click Element    ${shoppingCart}
Click Remove Button
     Click Button    ${removeButton} 
Verify product Removed from the Shopping Cart
    Sleep    3
    Page Should Not Contain    Sauce Labs Backpack

Click the Sauce Labs Backpack Product 
    Click Element    ${product}
Click the Add To Cart Button on the product page
    Click Element    ${addToCart2}
Click the Remove Button on the product page
    Click Button    ${removeButton2}
    


