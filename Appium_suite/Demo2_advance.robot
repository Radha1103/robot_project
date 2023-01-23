*** Settings ***
Library   AppiumLibrary
*** Test Cases ***
TC5
     Open Application    remote_url=http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=vivo1920
    ...     appPackage=org.khanacademy.android
    ...     appActivity=org.khanacademy.android.ui.library.MainActivity
    ...     noReset=true


    Set Appium Timeout    30s
    Run Keyword And Ignore Error      Wait Until Page Contains Element       xpath=//android.widget.TextView[@text='Dismiss']
    Run Keyword And Ignore Error    Click Element    xpath=//android.widget.TextView[@text='Dismiss']
    Wait Until Page Contains Element    xpath=//android.widget.Button[@text='Search']
    Click Element    xpath=//android.widget.Button[@text='Search']
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Arts and humanities']
    Click Element    xpath=//android.widget.TextView[@text='Arts and humanities']

    ${count}   Get Matching Xpath Count   xpath=//*[@text='Art of Asia']
    WHILE    ${count}==0
        Swipe By Percent    90    75    90    25
        ${count}   Get Matching Xpath Count   xpath=//*[@text='Art of Asia']
    END
    Wait Until Page Contains Element    xpath=//*[@text='Art of Asia']
    Click Element    xpath=//*[@text='Art of Asia']
    
    ${count1}  Get Matching Xpath Count    xpath=//*[@text='South Asia']
    WHILE    ${count1}==0
    Swipe By Percent    90    80    90    20
    ${count1}  Get Matching Xpath Count    xpath=//*[@text='South Asia']
         
    END
    Wait Until Page Contains Element    xpath=//*[@text='South Asia']
    Click Element    xpath=//*[@text='South Asia']


    ${count2}  Get Matching Xpath Count    xpath=//*[@text='The Taj Mahal']
    WHILE    ${count2}==0
    Swipe By Percent    90    90    90    20
    ${count2}  Get Matching Xpath Count    xpath=//*[@text='The Taj Mahal']

    END
    Wait Until Page Contains Element    xpath=//*[@text='The Taj Mahal']
    Click Element    xpath=//*[@text='The Taj Mahal']
    Page Should Contain Text        fifth 


    ${page_source}  Get Source
    Log     ${page_source}
    Sleep    10s
    [Teardown]   Close Application
