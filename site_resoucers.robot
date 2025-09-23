*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}                      https://fabianofernandeseventos.com.br/
${nome}                     (//h1[normalize-space()='Fabiano Fernandes Eventos'])[1]
${logo}                     (//img[@alt='Fabiano Fernandes Eventos'])[1]
${Botão_Entrar_contato}     //a[normalize-space()='Entre em Contato']
${Texto_Contato}            (//h2[normalize-space()='Entre em Contato'])[1]
${Botão_Serviço}            //a[normalize-space()='Serviços']
${Serviços}                 (//h2[normalize-space()='Nossos Serviços'])[1]
${Botão_Início}             //a[normalize-space()='Início']
${Início}                   (//h1[normalize-space()='Fabiano Fernandes Eventos'])[1]
${Botão_Sobre}              (//a[normalize-space()='Sobre'])[1]
${Sobre}                    (//h2[normalize-space()='Sobre Fabiano Fernandes Eventos'])[1]
${Botão_Contato}            (//a[normalize-space()='Contato'])[1]
${Botão_Instagran_cabeç}    //nav[@class='navbar']//a[@aria-label='Instagram']
${Perfil_Insta}             fabiano.fernandes.75873
${URL_Instragran}           https://www.instagram.com/fabiano.fernandes.75873/
${Botão_Instragan_cont}     (//div)[37]
${Botão_Facebook_cabeç}     //nav[@class='navbar']//a[@aria-label='Facebook']//*[name()='svg']
${URL_Facebook}             https://www.facebook.com/fabiano.fernandes.75873?locale=pt_BR
${Perfil_Face}              fabiano.fernandes.75873
${Botão_Facebook_cont}      //a[@class='contact-btn facebook']




*** Keywords ***
Abrir o navegador
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    locator=${nome}
    #options=add_experimental_option("detach", True)

    [Documentation]    Este teste valida o acesso ao site https://fabianofernandeseventos.com.br/
Fechar o navegador
    Capture Page Screenshot
    Close Browser


Acessar o site
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${nome}

Verificar o título ${TITULO}
    Title Should Be    title=${TITULO}


    [Documentation]    Este teste valida a navegação entre os itens de menu do cabeçalho
Clicar no botão 'Entre em Contato'
    Wait Until Element Is Visible    locator=${Botão_Entrar_contato}
    Click Element    locator=${Botão_Entrar_contato}
    Sleep    3.0s
    Wait Until Element Is Visible    locator=${Texto_Contato}


Clicar no menu 'Início'
    Wait Until Element Is Visible    locator=${Botão_Início}
    Click Element    locator=${Botão_Início}
    Sleep    3.0s
    Wait Until Element Is Visible    locator=${Início}

Clicar no menu 'Serviços'
    Wait Until Element Is Visible    locator=${Botão_Serviço}
    Click Element    locator=${Botão_Serviço}
    Sleep    3.0s
    Wait Until Element Is Visible    locator=${Serviços}

Clicar no menu 'Sobre'
    Wait Until Element Is Visible    locator=${Botão_Sobre}
    Click Element    locator=${Botão_Sobre}
    Sleep    3.0s
    Wait Until Element Is Visible    locator=${Sobre}

Clicar no menu 'Contato'
    Wait Until Element Is Visible    locator=${Botão_Contato}
    Click Element    locator=${Botão_Contato}
    Sleep    3.0s
    Wait Until Element Is Visible    locator=${Texto_Contato}

    [Documentation]    Este teste valida o direcionamento para o intagran
Clicar no ícone do Instagran no cabeçalho
    Wait Until Element Is Visible    locator=${Botão_Instagran_cabeç}
    Click Element    locator=${Botão_Instagran_cabeç}
    Switch Window    NEW
    Wait Until Location Contains    expected=${Perfil_Insta}
    Sleep    3.0s
    Location Should Be    url=${URL_Instragran}
    Close Window
    ${janelas}    Get Window Handles
    Switch Window    ${janelas}[0]
    Wait Until Element Is Visible    locator=${nome}

Clicar no botão do Instagran no fale conosco agora
    Wait Until Element Is Visible    locator=${Botão_Contato}
    Click Element    locator=${Botão_Contato}
    Sleep    3.0s
    Wait Until Element Is Visible    locator=${Botão_Instragan_cont}
    Click Element    locator=${Botão_Instragan_cont}
    Switch Window    NEW
    Wait Until Location Contains    expected=${Perfil_Insta}
    Sleep    3.0s
    Location Should Be    url=${URL_Instragran}
    ${janelas}    Get Window Handles
    Switch Window    ${janelas}[0]
    Wait Until Element Is Visible    locator=${nome}

    [Documentation]    Este teste valida o direcionamento para o facebook
Clicar no ícone do facebook no cabeçalho
    Wait Until Element Is Visible    locator=${Botão_Facebook_cabeç}
    Click Element    locator=${Botão_Facebook_cabeç}
    Switch Window    NEW
    Wait Until Location Contains    expected=${Perfil_Face}
    Sleep    3.0s
    Location Should Be    url=${URL_Facebook}
    Close Window
    ${janelas}    Get Window Handles
    Switch Window    ${janelas}[0]
    Wait Until Element Is Visible    locator=${nome}

Clicar no botão do facebook no fale conosco agora
    Wait Until Element Is Visible    locator=${Botão_Contato}
    Click Element    locator=${Botão_Contato}
    Scroll Element Into View    locator=${Botão_Facebook_cont}
    Click Element    locator=${Botão_Facebook_cont}
    Switch Window    NEW
    Wait Until Location Contains    expected=${Perfil_Insta}
    Sleep    3.0s
    Location Should Be    url=${URL_Facebook}
    ${janelas}    Get Window Handles
    Switch Window    ${janelas}[0]
    Wait Until Element Is Visible    locator=${nome}