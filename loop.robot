*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${navegador}    gc
${homepage}     automationpractice.com/index.php
${esquema}      http
@{nombre_elementos}     //*[@id="homefeatured"]/li[1]/div/div[1]/div/a[2]/span    //*[@id="homefeatured"]/li[2]/div/div[1]/div/a[2]/span    //*[@id="homefeatured"]/li[3]/div/div[1]/div/a[2]    //*[@id="homefeatured"]/li[4]/div/div[1]/div/a[2]/span     //*[@id="homefeatured"]/li[5]/div/div[1]/div/a[2]    //*[@id="homefeatured"]/li[6]/div/div[1]/div/a[2]/span     //*[@id="homefeatured"]/li[7]/div/div[1]/div/a[2]/span
@{over_elementos}       //*[@id="homefeatured"]/li[1]/div/div[1]/div/a[1]/img     //*[@id="homefeatured"]/li[2]/div/div[1]/div/a[1]/img     //*[@id="homefeatured"]/li[3]/div/div[1]/div/a[1]/img    //*[@id="homefeatured"]/li[4]/div/div[1]/div/a[1]/img    //*[@id="homefeatured"]/li[5]/div/div[1]/div/a[1]/img    //*[@id="homefeatured"]/li[6]/div/div[1]/div/a[1]/img    //*[@id="homefeatured"]/li[7]/div/div[1]/div/a[1]/img
${contador}     0

*** Keywords ***
Abrir Home Page
    Open Browser    ${esquema}://${homepage}   ${navegador}

*** Test Cases ***
Abrir elementos del Homepages
    Abrir Home Page
    Maximize Browser Window
    :FOR    ${elementos}    IN      @{nombre_elementos}
    \    Mouse Over     xpath=@{over_elementos}[${contador}]
    \    Wait Until Element Is Visible   xpath=${elementos}
    \    Click Element      xpath=${elementos}
    \    Wait Until Element Is Visible    xpath=//*[@id="index"]/div[2]/div/div/a
    \    Click Element      xpath=//*[@id="index"]/div[2]/div/div/a
    \    ${contador}=   Evaluate   ${contador}+1
    Close Browser

