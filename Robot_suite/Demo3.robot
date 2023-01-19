*** Variables ***
${BROWSER_NAME}    edge
@{COLORS}    Red    Green   Yellow
&{My_Details}    name=Radhika    role=trainee    mobile=89898989  
*** Settings ***
Library   Collections



*** Test Cases ***
TC1
    ${my_name}  Set Variable  Radhika
    Log To Console    ${my_name}
    Log To Console    ${BROWSER_NAME}
    Log To Console    ${COLORS}

TC2
    Log To Console    ${COLORS}[2]
TC4
    ${item_count}   Get Length    ${COLORS}
    Log To Console    ${item_count}
TC5
    @{fruits}  Create List  apple  orange  mango
    Log To Console    ${fruits}[1]
    Append To List    ${fruits}   grapes
    Remove From List    ${fruits}    0
    Insert Into List    ${fruits}    1    pineapple
     ${item_count}   Get Length    ${fruits}
    Log To Console    ${item_count}
    Log To Console    ${fruits}

TC6
    FOR    ${i}    IN RANGE    1    10
        Log    ${i}
    END

TC7
    @{fruits}  Create List  apple  orange  mango  apple  pineapple
    FOR    ${i}    IN RANGE    0    4
        Log To Console  ${i}
        Log To Console    ${fruits}[${i}]

    END

TC8
    @{fruits}  Create List  apple  orange  mango  apple  pineapple
    FOR    ${i}    IN    @{fruits}
        Log    ${i}

    END

TC9
    Log To Console    ${My_Details}[name]

TC10
    &{emp_detail}  Create Dictionary  emp_id=12345   emp_name=Radhika    BU=TET
    Log To Console    ${emp_detail}