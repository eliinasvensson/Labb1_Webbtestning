*** Settings ***
Resource    Jurastina_tester.resource
*** Test Cases ***
Köpa Biljett
    Öppna Hemsidan
    Klicka På Köpa Biljett
    Välj Vilken Typ Av Biljett
    Välj Biljettkategori
    Välj Antal Biljetter
    Klicka På Lägg Till I Varukorgen
