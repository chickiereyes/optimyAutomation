*** Settings ***
Library     BuiltIn
Resource    ../resources/common.robot
Resource    ../resources/pages/login.robot
Resource    ../resources/pages/new_application.robot
Resource    ../resources/pages/entrance_exam.robot
Resource    ../resources/pages/summary.robot
Resource    ../resources/pages/success.robot
Test Setup      Initialization
Test Teardown   Terminate run

*** Test Cases ***
Submit new application
    Given go to the URL provided
    When login using the credentials provided
    And click Submit a new application button
    And check if Continue with the submission of the application is present
    Then page should be fill-out forms
    And fill-out the forms
    Then page should be the summary page
    And verify all inputted values are displayed in the Summary screen
    And click Validate and send button
    Then verify redirected to "Thank you for submitting your project" page


