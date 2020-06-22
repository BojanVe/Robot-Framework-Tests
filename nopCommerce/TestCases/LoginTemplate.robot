*** Settings ***
Library           SeleniumLibrary
Library           ExcelRobot
Library           Collections

*** Variables ***

*** Test Cases ***
Login
    [Setup]    Open Browser and Load Page
    [Template]    Login with invalid credentials
    @{usernames}[0]    @{passwords}[0]
    @{usernames}[1]    @{passwords}[1]
    @{usernames}[2]    @{passwords}[2]
    [Teardown]    Close Browser

*** Keywords ***
Open Browser and Load Page
    Open Browser    https://demo.nopcommerce.com/    chrome
    Maximize Browser Window
    ExcelRobot.Open Excel    ${EXECDIR}\\RobotSample.xlsx
    Get Excel Users
    Get Excel Passwords
    [Return]    ${usernames}    ${passwords}

Login with invalid credentials
    [Arguments]    ${email_arg}    ${password_arg}
    Click Element    class:ico-login
    Wait Until Element Is Visible    //*[@id="Email"]    10s
    Sleep    1
    Input Text    //*[@id="Email"]    ${email_arg}
    Input Text    //*[@id="Password"]    ${password_arg}
    Click Element    xpath:/html/body/div[6]/div[3]/div/div/div/div[2]/div[1]/div[2]/form/div[3]/input
    Wait Until Element Contains    //*[contains(@class,'message-error')]    Login was unsuccessful.    10s

Get Excel Users
    ${usernames}=    Create List
    Set Suite Variable    ${usernames}
    ${rowcount}    ExcelRobot.Get Row Count    Sheet1
    FOR    ${i}    IN RANGE    1    ${rowcount}+1
        ${username}=    Read Cell Data By Name    Sheet1    A${i}
        Append To List    ${usernames}    ${username}
    END
    [Return]    ${usernames}

Get Excel Passwords
    ${passwords}=    Create List
    Set Suite Variable    ${passwords}
    ${rowcount}    ExcelRobot.Get Row Count    Sheet1
    FOR    ${i}    IN RANGE    1    ${rowcount}+1
        ${password}=    Read Cell Data By Name    Sheet1    B${i}
        Append To List    ${passwords}    ${password}
    END
    [Return]    ${passwords}
