*** Settings ***
Resource    Jurastina_tester.resource
Suite Setup    Öppna Hemsidan, Registrerad, Inloggad Och Biljetter I Varukorg

*** Test Cases ***
Klicka på boka safari sidan
   TC007. Klicka På Boka Safari Sidan
Skriv in datum
    TC007. Skriv In Ett Redan Passerat Datum
Val av safari
    TC007. Välj Typ Av Safari
Tryck på boka safari knappen
    TC007. Klicka På Boka Safari
Felmeddelande visas
    TC007. Vänta Tills Felmeddelande Syns