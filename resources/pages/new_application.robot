*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Variables    ../../data/variables.py

*** Variables ***
${APPLICATION}      https://qrqck8u5t9co.front.staging.optimy.net/en/project/resume-draft/?form=76008305-395c-5a0e-8ce0-41d8395b3258

*** Keywords ***
Click Submit a new application button
    Click Element    css=li.nav-item:nth-child(2) > a:nth-child(1)
    Location Should Be    ${APPLICATION}

Click Submit new application
    Click Element    css=a.btn:nth-child(2) 

Check if Continue with the submission of the application is present
    ${continue_present}    Run Keyword And Return Status    Element Should Be Visible   css=li.card:nth-child(3) > a:nth-child(3)
    Run Keyword If    ${continue_present}
    ...     Click Submit new application
    ...     ELSE
    ...       Log   Continue with the submission of the application is not present
