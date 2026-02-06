*** Settings ***
Resource    Jurastina_tester.resource

*** Test Cases ***
Registrera sig
    Öppna hemsidan
Navigera till Register
    TC001.Klicka På Register
Fyller i uppgifter
    TC001.Fyll I Username
    TC001.Fyll I Password
Bekräfta registrering
    TC001.Klicka På Register Knappen