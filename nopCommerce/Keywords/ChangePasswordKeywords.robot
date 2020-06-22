*** Settings ***
Library           SeleniumLibrary
Resource          ../Variables/OrderFlowVariables.robot
Resource          ../Variables/ChangePasswordVariables.robot



*** Keywords ***
Click My Account Link
    Sleep    1
    Wait Until Element Is Visible    ${myAccountButton}
    Click Element    ${myAccountButton}

Verify and Click Change Password Link
    Sleep    1
    Wait Until Element Is Visible    ${changePasswordLink}    10
    Click Element    ${changePasswordLink}

Verify Change Password Page Title
    Wait Until Element Contains    ${changePasswordPageTitleDiv}    ${changePasswordPageTitle}    10

Fill Password Fields
    Sleep    1
    Input Text    ${oldPasswordField}    ${oldPassword}
    Sleep    1
    Input Text    ${newPasswordField}    ${newPassword}
    Sleep    1
    Input Text    ${confirmNewPasswordField}    ${confirmNewPassword}

Click Change Password Button
    Click Element    ${changePasswordButton}

Verify Password Change
    Wait Until Element Contains    ${changePasswordDiv}    ${changePasswordMessage}

Verify My Account Page Title
    Wait Until Element Contains    xpath:/html/body/div[6]/div[3]/div/div[2]/div/div[1]    My account - Customer info
