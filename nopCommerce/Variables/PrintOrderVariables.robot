*** Settings ***
Library           SeleniumLibrary
Library           String

*** Variables ***
${ordersLink}     xpath:/html/body/div[6]/div[3]/div/div[1]/div/div[2]/ul/li[3]/a
${ordersPageTitleDiv}    xpath:/html/body/div[6]/div[3]/div/div[2]/div/div[1]
${ordersPageTitle}    My account - Orders
${orderDetailsButton}    xpath:/html/body/div[6]/div[3]/div/div[2]/div/div[2]/div/div[1]/div[2]/input
${printButton}    xpath:/html/body/div[6]/div[3]/div/div/div/div[1]/a[1]
