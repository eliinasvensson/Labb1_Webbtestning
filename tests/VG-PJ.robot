*** Settings ***
Resource    Jurastina_tester.resource
Suite Setup    Öppna Hemsidan
*** Test Cases ***
KLickar på registrering
    TC001.Klicka På Register
Fyll i användarnamn
    TC001.Fyll I Username
Fyll i felaktigt lösenord
    TC005. Fyller I Felaktigt Lösenord
Klickar på registrera
    TC001.Klicka På Register Knappen
Väntar på felmeddelande angående lösenord
    TC005. Väntar På Felmeddelande Angående Lösenord
