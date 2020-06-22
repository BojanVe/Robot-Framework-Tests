*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Variables/PrintOrderVariables.robot

*** Keywords ***
Verify and Click Orders Link
    Wait Until Element Is Visible    ${ordersLink}
    Click Element    ${ordersLink}

Verify Orders Page Title
    Wait Until Element Contains    ${ordersPageTitleDiv}    ${ordersPageTitle}    10

Click Order Details Button
    Click Element    ${orderDetailsButton}

Verify and Click Print Button
    Wait Until Element Is Visible    ${printButton}
    Click Element    ${printButton}
