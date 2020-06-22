*** Settings ***
Resource          ../../OrderFlow/Keywords/Keywords.robot

*** Variables ***
${addressesLink}    xpath:/html/body/div[6]/div[3]/div/div[1]/div/div[2]/ul/li[2]/a
${addressesPageTitleDiv}    xpath:/html/body/div[6]/div[3]/div/div[2]/div/div[1]
${addressesPageTitle}    My account - Addresses
${addNewAddressButton}    xpath:/html/body/div[6]/div[3]/div/div[2]/div/div[2]/div[2]/input
${addAddressPageTitleDiv}    xpath:/html/body/div[6]/div[3]/div/div[2]/form/div/div[1]
${addAddressPageTitle}    My account - Add new address
${addressNameField}    id:Address_FirstName
${addressLastNameField}    id:Address_LastName
${addressEmailField}    id:Address_Email
${addressName}    Bojan
${addressLastName}    Velevski
${addressEmail}    bojan.velevski@hotmail.com
${addressCompanyName}    IWEC
${addressCompanyNameField}    id:Address_Company
${addressListId}    id:Address_CountryId
${addressListValue}    11
${addressCityField}    id:Address_City
${addressCity}    Hisar Demir
${addressPostalCodeField}    id:Address_ZipPostalCode
${addressPostalCode}    97240
${addressPhoneNumberField}    id:Address_PhoneNumber
${addressPhoneNumber}    38901234567
${addressSaveButton}    xpath:/html/body/div[6]/div[3]/div/div[2]/form/div/div[2]/div[2]/input
