*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
TC1
    Open Browser   browser=edge
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To     https://www.medibuddy.in/
    Click Element    link=Login
    Click Element    xpath=//div[@class='coperate']
    Click Element    xpath=//div[@class='coperate']
    Input Text    name=userName    John
    Input Password    name=password    John123
    Click Element    xpath=//input[@type='checkbox']
    Click Element    xpath=//button[@type='submit']
    Element Should Contain    xpath=//*[contains(text(),' incorrect password.')]          incorrect password.