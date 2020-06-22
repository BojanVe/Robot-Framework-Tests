*** Settings ***
Resource          ../Keywords/OrderKeywords.robot
Resource          ../Keywords/ProductListKeywords.robot

*** Test Cases ***
Compare Two Products
    [Setup]    Open browser and load page
    Navigate to Login Page
    Log In With Valid Credentials
    Navigate to Cellphones Menu
    Sleep    1
    Add HTC One M8 to Compare List
    Sleep    1
    Add HTC One Mini to Compare List
    Sleep    1
    Click Notification To Continue To Comparison
    Sleep    5
    [Teardown]    Close Browser

Remove Item from Compare List
    [Setup]    Open browser and load page
    Navigate to Login Page
    Log In With Valid Credentials
    Navigate to Cellphones Menu
    Sleep    1
    Add HTC One M8 to Compare List
    Sleep    2
    Add Nokia Lumia 1020 to Compare List
    Sleep    1
    Click Notification To Continue To Comparison
    Verify Compare Page Title
    Sleep    1
    Remove Nokia Lumia 1020 From Comparison
    Verify Nokia Lumia 1020 is Removed From List
    [Teardown]    Close Browser

Clear Comparison List
    [Setup]    Open browser and load page
    Navigate to Login Page
    Log In With Valid Credentials
    Navigate to Cellphones Menu
    Sleep    1
    Add HTC One M8 to Compare List
    Sleep    1
    Add Nokia Lumia 1020 to Compare List
    Sleep    1
    Click Notification To Continue To Comparison
    Verify Compare Page Title
    Sleep    1
    Click Clear Comparson List Button
    Verify Empty Comparison List
    [Teardown]    Close Browser
