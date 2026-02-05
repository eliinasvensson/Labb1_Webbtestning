*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Jurap}    http://127.0.0.1:8000/webpage-jurap/jurap.html

*** Keywords ***
Öppna hemsidan
    Set Selenium Speed    1
    Open Browser    ${Jurap}    Chrome
    Maximize Browser Window.

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