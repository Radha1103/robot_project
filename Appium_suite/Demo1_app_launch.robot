*** Settings ***
Library   AppiumLibrary
*** Test Cases ***
TC1
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=vivo1920
    ...    app=C:${/}Users${/}40032431${/}Components${/}khan-academy-7-3-2.apk


    ${page_source}  Get Source
    Log To Console    ${page_source}
    Sleep    30s
    [Teardown]   Close Application

TC2

    Open Application    remote_url=http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=vivo1920
    ...    app=C:${/}Users${/}40032431${/}Components${/}khan-academy-7-3-2.apk


    Wait Until Page Contains Element       xpath=//android.widget.TextView[@text='Dismiss']
    Click Element    xpath=//android.widget.TextView[@text='Dismiss']
    Wait Until Page Contains Element       xpath=//android.widget.TextView[@text='Sign in']
    Click Element    xpath=//android.widget.TextView[@text='Sign in']
     Wait Until Page Contains Element       xpath=//android.widget.TextView[@text='Sign in']
    Click Element    xpath=//android.widget.TextView[@text='Sign in']
    Input Text    xpath=//android.widget.EditText[@text='Enter an e-mail address or username']    hello123@gmail.com
     Input Password    xpath=//android.widget.EditText[@text='Password']          rad1234
     Wait Until Page Contains Element       xpath=//android.widget.Button[@content-desc="Sign in"]
     Click Element    xpath=//android.widget.Button[@content-desc="Sign in"]
     Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='There was an issue signing in']
     Element Should Contain Text    xpath=//android.widget.TextView[@text='There was an issue signing in']       There was an issue signing in
     ${page_source}  Get Source
    Log To Console    ${page_source}
    Sleep    30s
    [Teardown]   Close Application

