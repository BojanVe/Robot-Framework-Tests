*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Keywords/RegisterUserKeywords.robot
Resource          ../Variables/RegisterUserVariables.robot

*** Test Cases ***
RegisterUser
    [Setup]    Open Browser and Load Page
    Check Title
    Verify and Click Register Button
    Select Gender
    Enter First Name
    Enter Last Name
    Choose Date of Birth
    Enter Email
    Enter Company Name
    Enter Password
    Click and Verify Register
    [Teardown]    Close Browser
