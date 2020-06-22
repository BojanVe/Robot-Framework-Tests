*** Settings ***
Resource          ../Keywords/ChangePasswordKeywords.robot
Resource          ../Keywords/OrderKeywords.robot
Resource          ../Keywords/AddAddressKeywords.robot

*** Test Cases ***
ChangePassword
    [Setup]    Open browser and load page
    Navigate to Login Page
    Log In With Valid Credentials
    Click My Account Link
    Verify and Click Change Password Link
    Verify Change Password Page Title
    Fill Password Fields
    Click Change Password Button
    Verify Password Change
    [Teardown]    Close Browser

Add Address
    [Setup]    Open browser and load page
    Navigate to Login Page
    Log In With Valid Credentials
    Click My Account Link
    Verify My Account Page Title
    Sleep    1
    Verify and Navigate to Addresses Menu
    Verify Addresses Page Title
    Sleep    1
    Click Add New Address
    Verify New Address Page Title
    Set Parameters for New Address
    Click Save Address Button
    [Teardown]    Close Browser
