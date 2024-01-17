*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Variables   ../../data/variables.py

*** Keywords ***    
Page should be fill-out forms
    Wait Until Page Contains    Entrance exam
    Page Should Contain    Entrance exam

Set image path and do upload
    ${current_directory}    Evaluate    '/'.join('${CURDIR}'.split('/')[:-2])
    ${image_upload}=    Set Variable    ${current_directory}${image_path}
    Choose File    css=div.btn > input:nth-child(3)    ${image_upload}

Fill-out the forms
    Input Text    css=#\\30 6c8a27e-7d11-57b2-9286-af8fc8ba5b27    ${first_name}
    Input Text    css=#\\39 d848df4-cdd0-50aa-820f-fdedcbda7e11    ${last_name}
    Input Text    css=#\\38 52ff964-97c2-5ea0-9674-49b3f95d2e86\\:\\:17540589-1aa5-5bf7-93fa-d49acf58b711    ${address}
    Run Keyword And Ignore Error    Scroll Element Into View    css=.ui-autocomplete-input
    Input Text    css=.ui-autocomplete-input    1000
    Click Element    css=#ui-id-1
    Select From List By Value    css=#bf6f7c7f-1da5-55d7-99ac-2866e4a139fd  ZO
    Set image path and do upload
    Run Keyword And Ignore Error    Scroll Element Into View    css=#container_353cc156-8382-5925-82ef-f39f1a5f7d06 > label:nth-child(1) > div:nth-child(1)
    Click Element    css=#container_353cc156-8382-5925-82ef-f39f1a5f7d06 > label:nth-child(1) > div:nth-child(1)
    Select From List By Value    css=#field_cba99291-980c-5cb1-91c2-1db8d294587b    53d5877a-54ed-558b-a83e-9ef29729432c
    Click Element    css=#container_60e2a93c-78a8-5f8f-ad08-fda1321f910d > label:nth-child(1) > div:nth-child(1)
    Click Element    css=#container_2096740d-cd40-5d7a-b4e6-4caeec116857 > label:nth-child(1) > div:nth-child(1)
    Click Element    css=#container_e6456bec-eb42-5d46-9cc5-af39cf9028a8 > label:nth-child(1) > div:nth-child(1)
    Click Element    css=#container_168fbd0e-3b12-5567-bb36-6959c521ffae > label:nth-child(1) > div:nth-child(1)
    Run Keyword And Ignore Error    Scroll Element Into View    css=navButtonNext
    Click Element    css=#container_c3a3b516-fbe1-5eb2-90e6-f90c21972e3a > div:nth-child(2)
    Press Keys    css=#container_c3a3b516-fbe1-5eb2-90e6-f90c21972e3a > div:nth-child(2)   ${text}
    Click Element    css=#navButtonNext
