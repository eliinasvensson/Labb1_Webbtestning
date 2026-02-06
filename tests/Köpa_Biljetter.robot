*** Settings ***
Resource    Jurastina_tester.resource
*** Test Cases ***
Köpa Biljett
    Öppna Hemsidan
Navigerar till köpa biljett sidan
    TC003.Klicka På Köpa Biljett
Val av biljett
    TC003.Välj Vilken Typ Av Biljett
    TC003.Välj Biljettkategori
Antal biljetter
    TC003.Välj Antal Biljetter
Bekräfta köp
    TC003.Klicka På Lägg Till I Varukorgen
Klickar på OK
    TC003. KLickar OK På Pop-up Fönstret
