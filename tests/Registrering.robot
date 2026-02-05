*** Settings ***
Resource    Jurastina_tester.resource

*** Test Cases ***
Registrera sig
    Öppna hemsidan
    Klicka på register
    Fyll i username
    Fyll i password
    Klicka på register knappen