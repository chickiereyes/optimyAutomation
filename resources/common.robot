*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     BuiltIn


*** Variables ***
${URL}      https://qrqck8u5t9co.front.staging.optimy.net/en/
${BROWSER}  Chrome

*** Keywords ***
Close cookies modal
    [Documentation]     Closes cookies modal if present
    ${modal_present}    Run Keyword And Return Status    Element Should Be Visible    css=#cookie-close
    Run Keyword If    ${modal_present}
    ...    Click Element    css=#cookie-close
    ...  ELSE
    ...    Log    Modal is not present, skipping this step in the setup

Set browser
    [Documentation]     Sets the browser for testing and maximize browser
    Open Browser        about:blank  ${BROWSER}
    Maximize Browser Window

Set Speed
    [Documentation]     Setting selenium run speed and selenium timeout for all waits
    set selenium speed      0.5 seconds
    set selenium timeout    10

Initialization
    [Documentation]     All necessary setup before running the test
    Set Speed
    Set browser

Terminate run
    [Documentation]     All necessary steps to terminate the test
    Set Speed
    Close Browser

Go to the URL provided
    [Documentation]     Go to the URL to be tested and close cookie modal
    Go To    ${URL}
    Close cookies modal

