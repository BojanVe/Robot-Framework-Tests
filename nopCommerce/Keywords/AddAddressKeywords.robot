*** Settings ***
Library           SeleniumLibrary
Resource          ../Variables/OrderFlowVariables.robot
Resource          ../Variables/ChangePasswordVariables.robot
Resource          ../Variables/AddAddressVariables.robot

*** Keywords ***
Verify and Navigate to Addresses Menu
    Wait Until Element Is Visible    ${addressesLink}
    Click Element    ${addressesLink}

Verify Addresses Page Title
    Wait Until Element Contains    ${addressesPageTitleDiv}    ${addressesPageTitle}

Click Add New Address
    Click Element    ${addNewAddressButton}

Verify New Address Page Title
    Wait Until Element Contains    ${addAddressPageTitleDiv}    ${addAddressPageTitle}

Set Parameters for New Address
    Input Text    ${addressNameField}    ${addressName}
    Input Text    ${addressLastNameField}    ${addressLastName}
    Input Text    ${addressEmailField}    ${addressEmail}
    Input Text    ${addressCompanyNameField}    ${addressCompanyName}
    Select From List By Value    ${addressListId}    ${addressListValue}
    Input Text    ${addressCityField}    ${addressCity}
    Input Text    ${addressPostalCodeField}    ${addressPostalCode}
    Input Text    ${addressPhoneNumberField}    ${addressPhoneNumber}

Click Save Address Button
    Click Element    ${addressSaveButton}
