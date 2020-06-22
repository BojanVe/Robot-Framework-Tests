*** Settings ***
Resource          ../../OrderFlow/Keywords/Keywords.robot

*** Variables ***
${myAccountButton}    //*[@class='ico-account']
${changePasswordLink}    //*[@class='list']/li[7]/a
${changePasswordPageDiv}    //*[@class='page-title']/h1
${changePasswordPageTitle}    My account - Change password
${oldPasswordField}    id:OldPassword
${newPasswordField}    id:NewPassword
${confirmNewPasswordField}    id:ConfirmNewPassword
${oldPassword}    testing12345
${newPassword}    testing
${confirmNewPassword}    testing
${changePasswordButton}    //*[@novalidate='novalidate']/div/input
${changePasswordDiv}    //*[@class='result']
${changePasswordMessage}    Password was changed
${changePasswordPageTitleDiv}    xpath:/html/body/div[6]/div[3]/div/div[2]/div/div[1]
