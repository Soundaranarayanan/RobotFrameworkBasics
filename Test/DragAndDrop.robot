# *** Settings ***
# Documentation     To validate the selection of dropdown
# Library    SeleniumLibrary
# Test Teardown     Close Browser

# *** Test Cases ***
# Verify that the user can drag and drop the element    
#     Open the Browser with URL
#     Verify Element Text befor drag
#     Drag the element and drop
#     Verify Element text after drag


# *** Keywords ***
# Open the Browser with URL
#      Go To    https://demoqa.com/droppable
#      Maximize Browser Window
#      Set Selenium Implicit Wait    2
# Verify Element Text befor drag
#     Element Text Should Be    id:droppable    Drop here    timeout=5
# Drag the element and drop      
#     Drag And Drop    id:draggable    id:droppable
# Verify Element text after drag
#     Element Text Should Be    id:droppable    Dopped!    timeout=5       