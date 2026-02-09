*** Settings ***
Resource    Jurastina_tester.resource
Suite Setup    Öppna Hemsidan, Registrerad Och Inloggad

*** Test Cases ***
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

Klicka på varukorgen
    TC004. Klicka På Varukorgen
Bekräfta köp
    TC004.Bekräfta Köp
Klickar på OK
    TC004. KLickar OK På Pop-up Fönstret

