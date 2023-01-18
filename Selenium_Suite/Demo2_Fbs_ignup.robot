*** Settings ***
Library      SeleniumLibrary
*** Test Cases ***
TC1
    Open Browser    url=https://www.facebook.com/     browser=edge
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    link=Create New Account
    Input Text      name=firstname     Radhika
    Input Text      name=lastname    Kavishwar
    Input Text    name=reg_email__    8390340085
    Input Password    id=password_step_input    1234
    Click Element    xpath=//input[@value='-1']
    Select From List By Label    id=day     20
    Select From List By Label    id=month     Apr
    Select From List By Label    id=year       2000
    Click Element    name=websubmit