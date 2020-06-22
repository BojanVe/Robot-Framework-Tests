*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Variables/OrderFlowVariables.robot
Resource          ../Variables/RegisterUserVariables.robot

*** Keywords ***
Check Title
    Title Should Be    ${title}

Verify and Click Register Button
    Wait Until Element Is Visible    ${registerButton}
    Click Element    ${registerButton}

Select Gender
    Wait Until Element Is Visible    ${genderMale}
    Click Element    ${registerButton}

Enter First Name
    Input Text    ${firstNameFIeld}    ${firstName}

Enter Last Name
    Input Text    ${lastNameField}    ${lastName}

Choose Date of Birth
    Select From List By Value    name:DateOfBirthDay    11
    Select From List By Value    name:DateOfBirthMonth    2
    Select From List By Value    name:DateOfBirthYear    1990

Enter Email
    Input Text    ${emailField}    ${emailRegister}

Enter Company Name
    Input Text    ${companyNameField}    ${companyname}

Enter Password
    Input Text    ${passwordField}    ${passwordRegister}
    Input Text    ${confirmPasswordField}    ${confirmPasswordRegister}

Click and Verify Register
    Click Element    ${registerCompleteButton}
    Wait Until Element Contains    ${registrationMessageDiv}    ${registrationMessage}
    Click Element    ${completeRegisterContinueButton}

Open Browser and Load Page
    Open Browser    ${URL}    ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible    ${logo}    10
