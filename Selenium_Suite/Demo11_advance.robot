*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=edge
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.ilovepdf.com/word_to_pdf
    Choose File    xpath=//input[@type='file']     C:${/}Users${/}40032431${/}OneDrive - LTTS${/}upload.docx
    Sleep    5s

TC2
    Open Browser    browser=edge
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.facebook.com/
    Input Text    css=#email    Jack
    Input Password    css=#pass    pass123
    Click Element    css=button[name='login']
