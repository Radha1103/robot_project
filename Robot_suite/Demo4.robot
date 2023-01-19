*** Settings ***
Library  OperatingSystem
Library  String
Library    XML
*** Test Cases ***
TC1
     ${files}  List Files In Directory    path=C:\\Users\\40032431\\AppData\\Local\\Temp
     #Log To Console    ${files}
     Log To Console    ${files}[0]
     
TC2
    Remove File    "C:\\Users\\40032431\\file1.txt"
    File Should Not Exist    "C:\\Users\\40032431\\file1.txt"
    
    
TC3
    ${name}  Set Variable  robot framework session
    Log To Console    ${name}
    ${converted}  Convert To Upper Case    ${name}
    Log To Console    ${converted}
    ${remove}  Remove String    ${name}    session
    Log To Console    ${remove}

TC4
     ${num1}    Set Variable   $200,100
     ${num2}    Set Variable   $200
     ${n1}  Remove String    ${num1}  $  ,
     ${n2}  Remove String    ${num2}  $
     ${num3}    Evaluate    ${n1}+${n2}