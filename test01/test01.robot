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
    Element Should Be Visible   hplogo
    Input Text    css=#lst-ib    hola
    Click Element   xpath=//*[@id="tsf"]/div[2]/div[3]/center/input[1]
    Page Should Contain    hola
    Close Browser
