*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Variables   ../../data/variables.py

*** Keywords ***
Page should be the summary page
    Wait Until Page Contains    Download / print this project
    Page Should Contain    Download / print this project

Verify all inputted values are displayed in the Summary screen
    Element Should Contain     css=#container_06c8a27e-7d11-57b2-9286-af8fc8ba5b27 > div:nth-child(1)    ${first_name}
    Element Should Contain     css=#container_9d848df4-cdd0-50aa-820f-fdedcbda7e11 > div:nth-child(1)    ${last_name}
    Element Should Contain     css=#container_17540589-1aa5-5bf7-93fa-d49acf58b711 > p:nth-child(1)    ${address}
    Element Should Contain     css=#container_5911b832-9522-524a-9f3c-8014c2ddba1c > p:nth-child(1)    ${postal_code}
    Element Should Contain     css=#container_bf6f7c7f-1da5-55d7-99ac-2866e4a139fd > p:nth-child(1)    ${country}
    Element Should Contain     css=#container_396b40f4-2e98-5e88-8bb5-611227ddf7de > div:nth-child(1) > ul:nth-child(2) > li:nth-child(1) > a:nth-child(1)    ${photo}
    Element Should Contain     css=#container_353cc156-8382-5925-82ef-f39f1a5f7d06    ${gender}
    Element Should Contain     css=p.answer    ${role}
    Element Should Contain     css=#\\ \\ \\ \\ container_60e2a93c-78a8-5f8f-ad08-fda1321f910d    ${tools1}
    Element Should Contain     css=#\\ \\ \\ \\ container_2096740d-cd40-5d7a-b4e6-4caeec116857    ${tools2}
    Element Should Contain     css=#\\ \\ \\ \\ container_e6456bec-eb42-5d46-9cc5-af39cf9028a8    ${programming}
    Element Should Contain     css=#\\ \\ \\ \\ container_168fbd0e-3b12-5567-bb36-6959c521ffae    ${framework}
    Element Should Contain     css=#container_c3a3b516-fbe1-5eb2-90e6-f90c21972e3a > div:nth-child(2) > div:nth-child(1) > p:nth-child(1)    ${text}

Click Validate and send button
    Click Element    css=button.ml-md-auto