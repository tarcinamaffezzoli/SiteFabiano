*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}                     https://fabianofernandeseventos.com.br/
${nome}                    (//h1[normalize-space()='Fabiano Fernandes Eventos'])[1]
${logo}                    (//img[@alt='Fabiano Fernandes Eventos'])[1]
${Botão_Entrar_contato}    //a[normalize-space()='Entre em Contato']
${Texto_Contato}           (//h2[normalize-space()='Entre em Contato'])[1]

*** Keywords ***
Abrir o navegador
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    locator=${nome}
    #options=add_experimental_option("detach", True)

Fechar o navegador
    Capture Page Screenshot
    Close Browser


Acessar o site
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${nome}

Verificar o título ${TITULO}
    Title Should Be    title=${TITULO}


Clicar no botão 'Entre em Contato'
    Wait Until Element Is Visible    locator=${Botão_Entrar_contato}
    Click Element    locator=${Botão_Entrar_contato}
    Sleep    3.0s
    Wait Until Element Is Visible    locator=${Texto_Contato}