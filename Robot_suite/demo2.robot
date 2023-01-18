*** Settings ***
Library  OperatingSystem
*** Test Cases ***
TC1
    Create Directory     path=C:\\Robot_Project\\Rad
TC2
    Log To Console    ${CURDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    Radhika${SPACE}${SPACE}Hi
    Log To Console    ${SUITE_NAME}
