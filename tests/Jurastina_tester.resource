*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Jurap}    http://127.0.0.1:8000/webpage-jurap/jurap.html
${Användarnamn}    Sebastian Jansson
${Lösenord}    12345678

*** Keywords ***
Öppna hemsidan
    Set Selenium Speed    0.5
    Open Browser    ${Jurap}    Chrome
    Maximize Browser Window

Öppna hemsidan, Registrerad och Inloggad
    Öppna Hemsidan
    Registrera Användare
    Logga In

Registrera användare
    TC001.Klicka på register
    Click Element    id=register-nav

    Click Element    id=reg-username
    Input Text    id=reg-username    ${Användarnamn}

    Click Element    id=reg-password
    Input Text    id=reg-password    ${Lösenord}

    Click Button    //*[@id="register-form"]/button

Logga in
    TC002.Klicka på login
    Click Element    id=login-nav


    Click Element    id=login-username
    Input Text    id=login-username    ${Användarnamn}


    Click Element    id=login-password
    Input Text    id=login-password    ${Lösenord}


    Click Button    //*[@id="login-form"]/button


TC001.Klicka på register
    Click Element    id=register-nav

TC001.Fyll i username
    Click Element    id=reg-username
    Input Text    id=reg-username    ${Användarnamn}

TC001.Fyll i password
    Click Element    id=reg-password
    Input Text    id=reg-password    ${Lösenord}

TC001.Klicka på register knappen
    Click Button    //*[@id="register-form"]/button


TC002.Klicka på login
    Click Element    id=login-nav

TC002.Fyll i ett unikt username
    Click Element    id=login-username
    Input Text    id=login-username    ${Användarnamn}

TC002.Fyll i ett unikt password
    Click Element    id=login-password
    Input Text    id=login-password    ${Lösenord}

TC002.Klicka på login-knappen
    Click Button    //*[@id="login-form"]/button


TC003.Klicka på köpa biljett
    Wait Until Element Is Visible    id=cart-nav
    Click Element    id=tickets-nav
    
TC003.Välj vilken typ av biljett
    Click Element    id=ticket-type
    Select From List By Value    id=ticket-type    Senior
TC003.Välj biljettkategori
    Click Element    id=ticket-category   
    Select From List By Value    id=ticket-category    VIP
TC003.Välj antal biljetter
    Click Element    id=ticket-quantity
    Input Text    id=ticket-quantity    3
TC003.Klicka på lägg till i varukorgen
    Click Button    //*[@id="ticket-form"]/button

TC003. KLickar OK på pop-up fönstret
    Handle Alert    action=ACCEPT


TC004. Klicka på varukorgen
    Click Element    id=cart-nav

TC004.Bekräfta köp
    Click Button    //*[@id="checkout-button"]

TC004. KLickar OK på pop-up fönstret
    Handle Alert    action=ACCEPT
    
TC005. Fyller i felaktigt lösenord 
    #Lösenordet är mindre än 8 tecken och uppfyller inte lösenordskriterier
    Click Element    id=reg-password
    Input Text    id=reg-password    1234567
TC005. Väntar på felmeddelande angående lösenord
    Wait Until Element Is Visible    id=register-message

TC006. Öppna Buy Tickets sidan
    #Klicka på köpa biljett utan att vara inloggad
    Click Element    id=tickets-nav