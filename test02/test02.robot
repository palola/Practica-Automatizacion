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
    Go to   http://winstoncastillo.com/udemy/
    Set Focus To Element    css=body > div.container.align-middle > div > div:nth-child(4) > a:nth-child(2)
    Click Element   css=body > div.container.align-middle > div > div:nth-child(4) > a:nth-child(2)
    Element Text Should Be   css=body > div.container.align-middle > div > div:nth-child(4) > a:nth-child(2)     Modal title
    Close Browser
