*** Settings ***
Library     SeleniumLibrary
Library     Screenshot

*** Variables ***
${navegador}    gc



*** Keywords ***
Abrir navegador
    [Arguments]     ${URL}   ${navegador1}
    Open Browser    ${URL}   ${navegador1}

Enfocar y Clickear Elemento
    [Arguments]     ${elemento}     ${elemento2}
    Set Focus To Element    ${elemento}
    Click Element   ${elemento2}


Cerrar Navegador
    Maximize Browser Window
    Close Browser