*** settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}    localhost:7272
${BROWSER}   Chrome
${DELAY}    1
${EVENT PAGE URL}    file:///C:/Users/Lenovo/TestAutomationLab/StarterFiles/Registration.html
${SUCCESS URL}    file:///C:/Users/Lenovo/TestAutomationLab/StarterFiles/Success.html

*** keywords ***
Open Workshop Registration Page
    Open Browser    ${EVENT PAGE URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Page Should be open

Page Should be open
    Title Should be    Registration

Input First Name
    [Arguments]    ${firstname}
    Input Text    id:firstname    ${firstname}

Input Last Name
    [Arguments]    ${lastname}
    Input Text    id:lastname    ${lastname}

Input Organization
    [Arguments]    ${organization}
    Input Text    id:organization    ${organization}

Input Email
    [Arguments]    ${email}
    Input Text    id:email    ${email}

Input Phone
    [Arguments]    ${phone}
    Input Text    id:phone    ${phone}

Click Register Button
    Click Button    id:registerButton

Verify Success Page
    Location Should Contain    Success.html
    Title Should Be    Success
