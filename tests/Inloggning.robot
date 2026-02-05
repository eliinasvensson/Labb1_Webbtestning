*** Settings ***
Resource    Jurastina_tester.resource

*** Test Cases ***
Logga in
    Öppna Hemsidan
    Klicka På Login
    Fyll I Ett Unikt Username
    Fyll I Ett Unikt Password
    Klicka På Login-knappen
