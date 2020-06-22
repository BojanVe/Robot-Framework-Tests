*** Settings ***
Library           SeleniumLibrary
Library           String

*** Variables ***
${comparePageTitleDiv}    xpath:/html/body/div[6]/div[3]/div/div[2]/div/div[1]
${comparePageTitle}    Compare products
${nokiaRemoveButton}    xpath:/html/body/div[6]/div[3]/div/div[2]/div/div[2]/div/table/tbody/tr[1]/td[2]/input
${clearComparisonListButton}    xpath:/html/body/div[6]/div[3]/div/div[2]/div/div[2]/a
${comparisonMessageDiv}    xpath:/html/body/div[6]/div[3]/div/div[2]/div/div[2]/div
${clearComparisonMessage}    You have no items to compare.