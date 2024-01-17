*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Variables    ../../data/variables.py

*** Keywords ***
Enter username and password
    Click Element    css=a.ml-auto
    Input Text    css=#login-email    ${USERNAME}
    Input Password    css=#login-password    ${PASSWORD}
    Click Element    css=button.btn-lg:nth-child(2)
    Wait Until Element Is Not Visible    css=a.ml-auto

Login using the credentials provided
    ${login_present}    Run Keyword And Return Status    Element Should Be Visible    css=a.ml-auto
    Run Keyword If    ${login_present}
    ...    Enter username and password
    ...  ELSE
    ...    Log      Skipping login step