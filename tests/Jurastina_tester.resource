*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Jurap}    http://127.0.0.1:8000/webpage-jurap/jurap.html

*** Keywords ***
Öppna hemsidan
    Set Selenium Speed    1
    Open Browser    ${Jurap}    Chrome
    Maximize Browser Window

Klicka på register
    Click Element    id=register-nav

Fyll i username
    Click Element    id=reg-username
    Input Text    id=reg-username    Sebastian Jansson

Fyll i password
    Click Element    id=reg-password
    Input Text    id=reg-password    12345678

Klicka på register knappen
    Click Button    //*[@id="register-form"]/button

Klicka på login
    Click Element    id=login-nav

Fyll i ett unikt username
    Click Element    id=login-username
    Input Text    id=login-username    Sebastian Jansson

Fyll i ett unikt password
    Click Element    id=login-password
    Input Text    id=login-password    12345678

Klicka på login-knappen
    Click Button    //*[@id="login-form"]/button

Klicka på köpa biljett
    Click Element    id=tickets-nav
    
Välj vilken typ av biljett
    Click Element    id=ticket-type
    Select From List By Value    id=ticket-type    Senior
Välj biljettkategori
    Click Element    id=ticket-category   
    Select From List By Value    id=ticket-category    VIP
Välj antal biljetter
    Click Element    id=ticket-quantity
    Input Text    id=ticket-quantity    3
Klicka på lägg till i varukorgen
    Click Button    //*[@id="ticket-form"]/button