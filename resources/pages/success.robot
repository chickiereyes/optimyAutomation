*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Verify redirected to "Thank you for submitting your project" page
    Wait Until Page Contains    Thank you for submitting your project
    Page Should Contain    Thank you for submitting your project