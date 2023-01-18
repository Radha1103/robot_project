*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser   url=https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Open%20Browser   browser=edge
    ${title}    Get Title
    Log To Console    ${title}
    Should Be Equal    ${title}     SeleniumLibrary
TC2
    Open Browser  url=https://www.facebook.com/login.php     browser=edge
    Input Text    locator=id:email    text=hello.com
    Input Password    id:pass    welcom123
    Click Element     name=login
TC4
    Open Browser   url=https://www.db4free.net/phpMyAdmin/    browser=edge
    Input Text     id=input_username     hello.com
    Input Password    name=pma_password     hello1234
    Click Element    id=input_go
