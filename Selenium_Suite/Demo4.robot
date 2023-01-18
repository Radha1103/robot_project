*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
TC1
    Open Browser   browser=edge
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To     https://www.goto.com/meeting/
    Click Element    id=truste-consent-button
    Click Element    link=Try Free
    Input Text    id=first-name    John
    Input Text    id=last-name    Wick
    Input Text    id=login__email    John@gmail.com
    Select From List By Label    id=CompanySize       CompanySize