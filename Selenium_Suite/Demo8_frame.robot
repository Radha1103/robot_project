*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=edge
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/
    Select Frame    xpath=//frame[@name='login_page']
    Input Text    name=fldLoginUserId    tset123
    Click Element    partial link=CONTINUE
    Unselect Frame
TC2
    Open Browser    browser=edge
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.redbus.in/
    Click Element    id=i-icon-profile
    Click Element    id=signInLink
    Select Frame    xpath=//iframe[@class='modalIframe']
    Input Text    id=mobileNoInp    123654
    Element Should Contain    xpath=//span[@style='visibility: visible;']            Please enter valid mobile number
    Unselect Frame
    Close Browser