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
${Botão_Whatsapp_cabeç}     //nav[@class='navbar']//a[@aria-label='WhatsApp']//*[name()='svg']
${Telefone_Whatsapp}        5547991727277
${Botão_Whatsapp_cont}      //a[@class='contact-btn whatsapp']
${Botão_Casamentos}         (//a[normalize-space()='Casamentos'])[1]
${Botão_Formaturas}         (//a[normalize-space()='Formaturas'])[1]
${Botão_Prim_Comunhão}      (//a[normalize-space()='Primeira Comunhão'])[1]
${Botão_Aniversários}       (//a[normalize-space()='Aniversários'])[1]
${Botão_Festas_Corp}        (//a[normalize-space()='Festas Corporativas'])[1]
${Botão_Churras_Geral}      (//a[normalize-space()='Churrascos em Geral'])[1]
  

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

    [Documentation]    Este teste valida o direcionamento para o whatsapp
    
Clicar no ícone do whatsapp no cabeçalho
    Wait Until Element Is Visible    locator=${Botão_Whatsapp_cabeç}
    Click Element    locator=${Botão_Whatsapp_cabeç}
    Switch Window    NEW
    Wait Until Location Contains    expected=${Telefone_Whatsapp}    timeout=10s
    Close Window
    ${janelas}    Get Window Handles    
    Switch Window    ${janelas}[0]
    Wait Until Element Is Visible    locator=${nome}

Clicar no botão do whatsapp no fale conosco agora
    Wait Until Element Is Visible    locator=${Botão_Contato}
    Click Element    locator=${Botão_Contato}
    Scroll Element Into View    locator=${Botão_Whatsapp_cont}
    Click Element    locator=${Botão_Whatsapp_cont}
    Switch Window    NEW
    Wait Until Location Contains    expected=${Telefone_Whatsapp}    timeout=10s
    Close Window
    ${janelas}    Get Window Handles    
    Switch Window    ${janelas}[0]
    Wait Until Element Is Visible    locator=${nome}

Menu 'Casamento'
    Scroll Element Into View    locator=${Botão_Casamentos}
    Click Element    locator=${Botão_Casamentos}
    Wait Until Element Is Visible    locator=${Serviços}

Menu 'Formatura'
    Scroll Element Into View    locator=${Botão_Formaturas}
    Click Element    locator=${Botão_Formaturas}
    Sleep    5.0s
    Wait Until Element Is Visible    locator=${Serviços}

Menu 'Primeira Comunhão'
    Scroll Element Into View    locator=${Botão_Prim_Comunhão}
    Click Element    locator=${Botão_Prim_Comunhão}
    Sleep    5.0s
    Wait Until Element Is Visible    locator=${Serviços}

Menu 'Aniversário'
    Scroll Element Into View    locator=${Botão_Aniversários}
    Click Element    locator=${Botão_Aniversários}
    Sleep    5.0s
    Wait Until Element Is Visible    locator=${Serviços}

Menu 'Festas Corporativas'
    Scroll Element Into View    locator=${Botão_Festas_Corp}
    Click Element    locator=${Botão_Festas_Corp}
    Sleep    5.0s
    Wait Until Element Is Visible    locator=${Serviços}

Menu 'Churrascos em Geral'
    Scroll Element Into View    locator=${Botão_Churras_Geral}
    Click Element    locator=${Botão_Churras_Geral}
    Sleep    5.0s
    Wait Until Element Is Visible    locator=${Serviços}