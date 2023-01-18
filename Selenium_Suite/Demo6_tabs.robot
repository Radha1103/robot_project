*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
TC1
    Open Browser   browser=edge
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To     https://www.db4free.net/
    Click Element    partial link=phpMyAdmin
    Switch Window    phpMyAdmin
    Switch Window    db4free.net - MySQL Database for free
