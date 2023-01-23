*** Settings ***
Library   AppiumLibrary
Library    OperatingSystem
*** Test Cases ***
TC6
     Open Application    remote_url=http://localhost:4723/wd/hub
    ...    platformName=android
    ...    deviceName=vivo1920
    ...     appPackage=org.khanacademy.android
    ...     appActivity=org.khanacademy.android.ui.library.MainActivity
    ...     noReset=true



      Set Appium Timeout    30s
      Run Keyword And Ignore Error    Wait Until Page Contains Element    android=Uiselector().text("Dismiss")
      Run Keyword And Ignore Error    Click Element    android=Uiselector().text("Dismiss")

      Wait Until Page Contains Element    android=UiSelector().description("Settings")
      Click Element    android=UiSelector().description("Settings")

      Wait Until Page Contains Element    android=UiSelector().textContains("Sign in")
      Click Element     android=UiSelector().textContains("Sign in")

    Wait Until Page Contains Element    android=UiSelector().textContains("Sign up")
    Click Element    android=UiSelector().textContains("Sign up")
    Wait Until Page Contains Element    android=UiSelector().text("First name")
    Input Text    android=UiSelector().descriptionContains("First name")    John
    Input Text    android=UiSelector().descriptionContains("Last name")     Mark

    Click Element    android=UiSelector().textContains("Birth")
    Wait Until Page Contains Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)
    Click Element      android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)
    Clear Text     android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)
    Input Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)    Nov

    Wait Until Page Contains Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
    Click Element      android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
    Clear Text     android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
    Input Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)    23


     Wait Until Page Contains Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
    Click Element      android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
    Clear Text     android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
    Input Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)      1996




    ${page_source}  Get Source
    Log     ${page_source}
    Sleep    10s
    [Teardown]   Close Application


TC7

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

    &{dict_arg}     Create Dictionary       strategy=-android uiautomator
    ...     selector=UiSelector().text("Art of Asia")
    Execute Script    mobile:scroll   &{dict_arg}
    Click Element    android=UiSelector().text("Art of Asia")

     &{dict1_arg}     Create Dictionary       strategy=-android uiautomator
    ...     selector=UiSelector().text("South Asia")
    Execute Script    mobile:scroll   &{dict1_arg}
     Click Element    android=UiSelector().text("South Asia")


    &{dict2_arg}     Create Dictionary       strategy=-android uiautomator
    ...     selector=UiSelector().text("The Taj Mahal")
    Execute Script    mobile:scroll   &{dict2_arg}
     Click Element    android=UiSelector().text("The Taj Mahal")



     ${page_source}  Get Source
    Log     ${page_source}
    Sleep    10s
    [Teardown]   Close Application
