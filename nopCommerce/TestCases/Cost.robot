*** Settings ***
Resource          ../Keywords/OrderKeywords.robot
Resource          ../Keywords/ChangePasswordKeywords.robot
Resource          ../Keywords/PrintOrderKeywords.robot
Library           Collections

*** Test Cases ***
Calculate Cost
    [Setup]    Open browser and load page
    Navigate to Login Page
    Log In With Valid Credentials
    Click My Account Link
    Sleep    1
    Verify and Click Orders Link
    Verify Orders Page Title
    ${priceswithcurency}    Get WebElements    //*[@class='order-total']
    ${funds}=    Set Variable    0
    ${pricescount}    Get Element Count    //*[@class='order-total']
    FOR    ${i}    IN RANGE    0    ${pricescount}
        ${price}=    Get Text    ${priceswithcurency}[${i}]
        ${preintegerprice}=    Remove String    ${price}    $    ,    .
        ${integerprice}=    Convert To Integer    ${preintegerprice}
        ${funds}=    Evaluate    ${integerprice}+${funds}
    END
    ${funds}=    Evaluate    ${funds}/100
    Log    Funds spent for shopping = $${funds}
    [Teardown]    Close Browser
