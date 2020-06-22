*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Variables/OrderFlowVariables.robot
Resource          ../Variables/RegisterUserVariables.robot
Resource          ../Variables/ProductListVariables.robot

*** Keywords ***
Verify Compare Page Title
    Wait Until Element Contains    ${comparePageTitleDiv}    ${comparePageTitle}

Remove Nokia Lumia 1020 From Comparison
    Click Element    ${nokiaRemoveButton}

Verify Nokia Lumia 1020 is Removed From List
    Wait Until Element Does Not Contain    xpath:/html/body/div[6]/div[3]/div/div[2]/div/div[2]/div/table/tbody/tr[3]/td[2]/a    Nokia Lumia 1020

Click Clear Comparson List Button
    Click Element    ${clearComparisonListButton}

Verify Empty Comparison List
    Wait Until Element Contains    ${comparisonMessageDiv}    ${clearComparisonMessage}
