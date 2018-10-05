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
    Set Focus To Element    css=body > div.container.align-middle > div > div:nth-child(4) > a:nth-child(1)
    Click Element   xpath=/html/body/div[1]/div/div[2]/a[1]
    Close Browser
