*** Settings ***
Library    DateTime
*** Test Cases ***
TC1
    Log To Console    message=Radhika Kavishwar
    Log To Console    hello
TC2
    ${my_name}  Set Variable   Radhika
    Log To Console    ${my_name}
TC3
    ${date}  Get Current Date   
    Log To Console    ${date}
TC4
    ${radius}  Set Variable  10
    ${area}    Evaluate    3.14*${radius}*${radius}
    Log To Console    ${area}