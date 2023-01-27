*** Settings ***
Library      RequestsLibrary
*** Test Cases ***
TC1 Get Pet
    Create Session    petshop     https://petstore.swagger.io/v2
    ${response}  GET On Session   alias=petshop    url=pet/101
    Log   ${response}
    Log   ${response.json()}
    Log   ${response.json()}[id]

    ${actula_id}  Convert To String    ${response.json()}[id]
    Should Be Equal    ${actula_id}    101
    Log   ${response.json()}[name]
    Should Be Equal    ${response.json()}[name]    doggie
    ${response_body}   Convert To String    ${response.json()}
    Should Contain    ${response_body}   doggie

    Status Should Be    200