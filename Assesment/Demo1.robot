*** Settings ***
Library   AppiumLibrary
*** Test Cases ***
TC5
     Open Application    remote_url=http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=vivo1920
    ...     appPackage=com.tellapp
    ...     appActivity=com.tellapp.MainActivity



    Set Appium Timeout    30s
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Get started']
    Click Element    xpath=//android.widget.TextView[@text='Get started']

    Wait Until Page Contains Element    xpath=xpath=//android.widget.EditText[@text='Email']
    Input Text    xpath=//android.widget.EditText[@text='Email']    radhikakavishwar1@gmail.com
    Click Element    xpath=//android.widget.TextView[@text='Get started']

    ${page_source}  Get Source
    Log To Console    ${page_source}
    Sleep    30s
    [Teardown]   Close Application