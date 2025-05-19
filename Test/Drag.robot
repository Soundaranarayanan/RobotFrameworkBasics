# *** Settings ***
# Documentation     To validate the Drag and drop
# Library           SeleniumLibrary
# Test Teardown     Close Browser

# *** Variables ***
# ${URL}           https://demoqa.com/droppable
# ${browser}       chrome

# *** Test Cases ***
# Verify that user can drag and drop elements
#     Open the browser with URL
#     Verify element Text before drag
#     Drag the element and drop
#     Verify element Text after drag

# *** Keywords ***
# Open the browser with URL
#     Open Browser    ${URL}    ${browser}
#     Maximize Browser Window
#     Set Selenium Implicit Wait    5

# Verify element Text before drag
#     Element Text Should Be    id:droppable    Drop here    timeout=5

# Drag the element and drop
#     Drag And Drop    id:draggable    id:droppable

# Verify element Text after drag
#     Element Text Should Be    id:droppable    Dropped!    timeout=5
