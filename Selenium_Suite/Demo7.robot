*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
TC1
    Open Browser   browser=edge
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To     url=https://www.online.citibank.co.in/
    Run Keyword And Ignore Error   Click Element    xpath=//a[@title='Close']
    Click Element    xpath=//span[@class='txtSign']
    Switch Window    Citibank India
    Click Element    xpath=//div[contains(text(),'User ID? ')]
    Click Element    xpath=//a[@class='sbToggle sbFocus']
    Click Element    partial link=Credit Card
    Input Text    name=citiCard1    4545
    Input Text    name=citiCard2    5656 
    Input Text    name=citiCard3    8887 
    Input Text    name=citiCard4    9998
    Input Text    name=CCVNO        123
    Click Element    id=bill-date-long
    Select From List By Label    xpath=//select[@class='ui-datepicker-year']    2022
    Select From List By Label    xpath=//select[@class='ui-datepicker-month']    Apr
    Click Element    partial link=14
    Click Element    xpath=//input[@class='ctaBlue minWidth']
    Element Should Contain     id=ui-id-1                  Please accept Terms and Conditions
