*** Settings ***
Resource    Jurastina_tester.resource
Suite Setup    Öppna Hemsidan

*** Test Cases ***
Öppna köpa biljett sidan
    TC006. Öppna Buy Tickets Sidan
Val av biljett
    TC003.Välj Vilken Typ Av Biljett
    TC003.Välj Biljettkategori
Antal biljetter
    TC003.Välj Antal Biljetter
Bekräfta köp
    TC003.Klicka På Lägg Till I Varukorgen
Klickar på OK på felmeddelande
    TC003. KLickar OK På Pop-up Fönstret