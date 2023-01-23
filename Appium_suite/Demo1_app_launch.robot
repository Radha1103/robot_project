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

    Set Appium Timeout    30s
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
    Log      ${page_source}
    Sleep    10s
    [Teardown]   Close Application


TC3

    Open Application    remote_url=http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=vivo1920
    ...    app=C:${/}Users${/}40032431${/}Components${/}khan-academy-7-3-2.apk

    Set Appium Timeout    30s
    Wait Until Page Contains Element       xpath=//android.widget.TextView[@text='Dismiss']
    Click Element    xpath=//android.widget.TextView[@text='Dismiss']
    Wait Until Page Contains Element    xpath=//android.widget.ImageView[@content-desc='Settings']
    Click Element    xpath=//android.widget.ImageView[@content-desc='Settings']
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']
    Click Element    xpath=//android.widget.TextView[@text='Sign in']
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign up with email']
    Click Element    xpath=//android.widget.TextView[@text='Sign up with email']
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc="First name"]
    Input Text    xpath=//android.widget.EditText[@content-desc="First name"]     Riya
    Input Text    xpath=//android.widget.EditText[@content-desc="Last name"]      Joshi
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Birthday']
    Click Element    xpath=//android.widget.TextView[@text='Birthday']
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@resource-id='android:id/numberpicker_input']
    Click Element    xpath=//android.widget.EditText[@resource-id='android:id/numberpicker_input']
    Clear Text    xpath=//android.widget.EditText[@resource-id='android:id/numberpicker_input']
    Input Text    xpath=//android.widget.EditText[@resource-id='android:id/numberpicker_input']             Nov
    Click Element    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]
    Clear Text    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]
    Input Text    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]        23
    Click Element    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]
    Clear Text    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]
    Input Text    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]       1996
    Click Element    xpath=//android.widget.Button[@text='OK']
    Input Text    xpath=//android.widget.EditText[@text='Email address']    riya@1234
    Input Password    xpath=//android.widget.EditText[@text='Password']     riya11025
    Click Element    xpath=//android.widget.TextView[@text='CREATE']
     ${page_source}  Get Source
    Log To Console    ${page_source}
    Sleep    10s
    [Teardown]   Close Application


TC4
     Open Application    remote_url=http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=vivo1920
    ...     appPackage=org.khanacademy.android
    ...     appActivity =org.khanacademy.android.ui.library.MainActivity
    ...     noReset=true


    ${page_source}  Get Source
    Log To Console    ${page_source}
    Sleep    10s
    [Teardown]   Close Application
