*** settings ***
Resource    resource.robot

*** Test Cases ***
Open Workshop Registration Page
    Open Workshop Registration Page
    Close Browser

Register Success
    Open Workshop Registration Page
    Input First Name      Somyod
    Input Last Name       Sodsai
    Input Organization    CS KKU
    Input Email           somyod@kkumail.com
    Input Phone           091-001-1234
    Click Register Button
    Verify Success Page
    Close Browser

Register Success No Organization Info
    Open Workshop Registration Page
    Input First Name      Somyod
    Input Last Name       Sodsai
    Input Email           somyod@kkumail.com
    Input Phone           091-001-1234
    Click Register Button
    Verify Success Page
    Close Browser