*** Settings ***
Documentation    All the Page objects and Keywords of Checkout page
Resource    VerifyCartCountResources.robot
Library    SeleniumLibrary
*** Variables ***
${addToCart}           xpath://button[@id='add-to-cart-sauce-labs-backpack']
${shoppingCart}    xpath://a[@class='shopping_cart_link']
${checkoutButton}    xpath://button[@id='checkout']
${firstname}    xpath://input[@id='first-name']
${lastname}    xpath://input[@id='last-name']
${postalcode}    xpath://input[@id='postal-code'] 
${continueButton}    xpath://input[@id='continue']   
${finishButton}    xpath://button[@id='finish']
${orderSuccessful}    xpath://h2[text()='Thank you for your order!']
${firstname_value}    Soundar
${lastname_value}    M
${postalcode_value}    636003
*** Keywords ***
Click the Product to add to cart
    Click Button    ${addToCart}
Click the ShoppingCart Icon
    Click Element    ${shoppingCart}
Click Checkout Button
    Click Button    ${checkoutButton}
Send Details and click Continue Button   
    Input Text    ${firstname}    ${firstname_value}    
    Input Text    ${lastname}    ${lastname_value}
    Input Text    ${postalcode}    ${postalcode_value}
    Click Button    ${continueButton}
Click Finish button and verify page contains order successful message
    Click Button    ${finishButton}
    Element Text Should Be    ${orderSuccessful}    Thank you for your order!