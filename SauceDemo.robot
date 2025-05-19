*** Settings ***
Library           SeleniumLibrary                           
Library           DataDriver    file=/Users/admi/RobotFrameworkBasics\POM\Resources\TestData.xlsx     sheet_name=Sheet1
Test Template     Validate successful login
Test Teardown     Close All Browsers
*** Variables ***
${browser}                 Chrome
${login_btn}              xpath://input[@id='login-button']
${success_message}        xpath://div[@class='product_label']
${error_message}          xpath://h3
${url}                    https://www.saucedemo.com/v1/index.html
${username}               
${password}
${verify}                 
*** Test Cases ***
Login with user ${username} and verify result    ${username}    ${password}    ${verify}
*** Keywords ***
Validate successful login
    [Arguments]    ${username}    ${password}    ${verify}
    Open the browser with URL
    Fill the login Form    ${username}    ${password}
    Verify the message is correct    ${verify}
Open the browser with URL
    Create WebDriver    ${browser}
    Go To    ${url}
    Maximize Browser Window
    Set Selenium Implicit Wait    5
Fill the login Form
    [Arguments]    ${username}    ${password}
    Input Text    css:input[name="user-name"]    ${username}
    Input Password    css:input[name="password"]    ${password}
    Click Button    ${login_btn}
Verify the message is correct
    [Arguments]    ${verify}
    Run Keyword If    '${verify}'=='Products'
    ...    Element Text Should Be    ${success_message}    ${verify}
    ...    ELSE
    ...    Element Should Contain    ${error_message}    ${verify}