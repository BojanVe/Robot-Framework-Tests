*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Variables/ChangePasswordVariables.robot
Resource          ../Keywords/ChangePasswordKeywords.robot
Resource          ../Variables/PrintOrderVariables.robot
Resource          ../Keywords/PrintOrderKeywords.robot
Resource          ../Keywords/OrderKeywords.robot

*** Test Cases ***
OrderFlow
    [Setup]    Open browser and load page
    Navigate to Login Page
    Log In With Valid Credentials
    Check Cart Condition
    Run Keyword If    ${cartInteger}!=0    EmptyCart
    Navigate to Cellphones Menu
    Sleep    1
    Add HTC One M8 to Compare List
    Sleep    1
    Add HTC One Mini to Compare List
    Sleep    1
    Add Nokia Lumia 1020 to Compare List
    Sleep    1
    Click Notification To Continue To Comparison
    Sleep    1s
    Navigate to Item Detailed Page
    Add Item to Cart
    Navigate to Desktops Menu
    Sleep    2
    Click To Build Custom PC
    Configure Item
    Sleep    5
    Click on Shopping Cart
    Sleep    2
    Proceed to Checkout
    Sleep    2
    Verify Checkout and Proceed
    Select Shipping Option
    Select Shipping Method
    Select Payment Method
    Check Payment Info
    Confirm Order
    Success Message
    Click To Continue Shopping
    [Teardown]    Close Browser

PrintOrder
    [Setup]    Open browser and load page
    Navigate to Login Page
    Log In With Valid Credentials
    Click My Account Link
    Sleep    2
    Verify and Click Orders Link
    Sleep    2
    Verify Orders Page Title
    Click Order Details Button
    Verify and Click Print Button
    Sleep    5
    Get Window Names
    Get Window Titles
    Get Window Identifiers
    [Teardown]    Close Browser
