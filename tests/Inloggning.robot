*** Settings ***
Resource    Jurastina_tester.resource

*** Test Cases ***
Logga in
    Öppna Hemsidan
Navigerar till Login-sidan
    TC002.Klicka På Login
Fyller i uppgifter
    TC002.Fyll I Ett Unikt Username
    TC002.Fyll I Ett Unikt Password
Loggar in
    TC002.Klicka På Login-knappen
