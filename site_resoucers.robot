*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}                     https://fabianofernandeseventos.com.br/
${nome}                    (//h1[normalize-space()='Fabiano Fernandes Eventos'])[1]
${logo}                    (//img[@alt='Fabiano Fernandes Eventos'])[1]
${Botão_Entrar_contato}    (//a[normalize-space()='Entre em Contato'])[1]
${Texto_Contato}           (//h2[normalize-space()='Entre em Contato'])[1]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window
        # options=add_experimental_option("detach", True)
Fechar o navegador
    Capture Page Screenshot
    Close Browser


Acessar o site https://fabianofernandeseventos.com.br/
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${nome}

Verificar o título "${TITULO}"
    Title Should Be    title=${TITULO}

Clicar no botão 'Entre em Contato'
    Click Button    locator=${Botão_Entrar_contato}
    Wait Until Page Contains    text=${Texto_Contato}
    