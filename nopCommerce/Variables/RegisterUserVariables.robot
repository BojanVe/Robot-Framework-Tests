*** Settings ***
Library           SeleniumLibrary
Library           String

*** Variables ***
${title}          nopCommerce demo store
${registerbutton}    class=ico-register
${gender-male}    id:gender-male
${firstnamefield}    id:FirstName
${firstname}      Bojan
${lastnamefield}    id:LastName
${lastname}       Velevski
${daylist}        name:DateOfBirthDay
${monthList}      name:DateOfBirthMonth
${yearList}       name:DateOfBirthYear
${emailField}     id:Email
${email}          bojan.velevski+8@yahoo.com
${companyField}    id:Company
${companyname}    IW
${passField}      id:Password
${confirmPassField}    id:ConfirmPassword
${password}       testing123
${confirmRegister}    id:register-button
${successRegisterNotification}    class:result
${successRegisterMessage}    Your registration completed
${continueButton}    id:submit
${URL}            https://demo.nopcommerce.com/
${logo}           //*[@class='header-logo']/a/img
${browser}        chrome
${registerButton}    class=ico-register
${genderMale}     id:gender-male
${firstNameFIeld}    id:FirstName
${firstName}      Bojan
${lastNameField}    id:LastName
${lastName}       Velevski
${emailField}     id:Email
${emailRegister}    bojan.velevski+3@yahoo.com
${companyNameField}    id:Company
${companyName}    IW
${passwordField}    id:Password
${passwordRegister}    testing123
${confirmPasswordField}    id:ConfirmPassword
${confirmPasswordRegister}    testing123
${registerCompleteButton}    id:register-button
${registrationMessageDiv}    class:result
${registrationMessage}    Your registration completed
${completeRegisterContinueButton}    id:submit
