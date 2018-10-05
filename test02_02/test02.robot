*** Settings ***
Resource    recursos.robot

*** Test Cases ***
Buscar Palabra en el Navegador Chrome
    Abrir navegador     http://winstoncastillo.com/udemy/   ${navegador}
    Maximize Browser Window
    Set Focus To Element    xpath=/html/body/div[1]/div/div[2]/a[2]
    Click Element   css=body > div.container.align-middle > div > div:nth-child(4) > a:nth-child(2)
    Screenshot.Set Screenshot Directory    ../screenshot/
    Wait Until Element Is Visible    css=#exampleModalLabel
    Element Text Should Be   xpath=//*[@id="exampleModalLabel"]     Modal title
    Close Browser

Cliquear Elementos en homepage
    [Documentation]         https://www.winston.com
    Abrir navegador     https://google.com      firefox
    Enfocar y Clickear Elemento     xpath=sdlkjflkmdsf      xpath=lksdjflksdnflkdlksnf
    Enfocar y Clickear Elemento     xpath=kdsjflksdjfdsf    xpath=lksdjflksdnflkdlksnfdksfjlksdf
    Enfocar y Clickear Elemento     xpath=ldskflñsdkfmdslñmfmdñsmf    xpath=xpath=lksdjflksdnflkdlksnfslkflsdkfldsk
    Cerrar Navegador