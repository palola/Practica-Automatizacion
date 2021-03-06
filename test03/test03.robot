*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${navegador}    gc

*** Keywords ***
Abrir navegador
    Open Browser    http://google.com   ${navegador}

*** Test Cases ***
Buscar Palabra en el Navegador Chrome
    Abrir navegador
    Maximize Browser Window
    Go to   http://automationpractice.com/index.php
    Click Element   css=#contact-link > a
    Click Element   id=id_contact
    Click Element   xpath=//*[@id="id_contact"]/option[3]
    Click Element   css=#email
    Input Text      css=#email   test@gmail.com
    Set Focus To Element    css=#id_order
    Input Text      css=#id_order   order
    Input Text      css=#message    test paola
    Set Focus To Element    css=#submitMessage > span
    Close Browser