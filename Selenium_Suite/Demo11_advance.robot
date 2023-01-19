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

TC3
       Open Browser    browser=edge
       Maximize Browser Window
       Set Selenium Implicit Wait    30s
       Go To    url=https://phptravels.net/
       Execute Javascript  document.querySelector('#checkin').value='31-10-2023'
       Execute Javascript   document.querySelector('#checkout').value='23-11-2023'
       Click Element    xpath=//span[@class='select2-selection select2-selection--single']
       Input Text    xpath=//input[@class='select2-search__field']     Vadodara
       Click Element    xpath=//span[contains(text(),'Vadodara,India')]
       Sleep     5s

TC4
      Open Browser    browser=edge
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=https://nasscom.in/
     ${ele}  Get WebElement    xpath=//a[text()='Members Listing']
     Execute Javascript  arguments[0].click()  ARGUMENTS  ${ele}

