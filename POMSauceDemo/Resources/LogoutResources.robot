*** Settings ***
Documentation    Keywords and locators for verifying the Logout
Library    SeleniumLibrary

*** Variables ***
${menu}                   xpath://button[@id='react-burger-menu-btn']
${logout}                 xpath://a[@id='logout_sidebar_link']
${login_page_verify}     xpath://h4[text()='Accepted usernames are:']

*** Keywords ***
Click Menu Button
    Click Element    ${menu}
    Sleep    1  

Click Logout Button
    Click Element    ${logout}
    Sleep    1
Verify Logout Done
    Element Should Contain    ${login_page_verify}    Accepted usernames are:
