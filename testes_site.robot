*** Settings ***
Documentation    Esta suite testa o site https://fabianofernandeseventos.com.br/
Resource         site_resoucers.robot
Library          SeleniumLibrary
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador



*** Test Cases ***
Acesso ao Site
    [Documentation]    Este teste valida o acesso ao site https://fabianofernandeseventos.com.br/
    [Tags]             site
    Verificar o título Fabiano Fernandes Eventos - Buffet e Churrasco

Entrar em Contato
    [Tags]             botão

    Clicar no botão 'Entre em Contato'

Navegar menus do cabeçalho
    [Documentation]    Este teste valida a navegação entre os itens de menu do cabeçalho
    [Tags]             menus
    Clicar no menu 'Início'
    Clicar no menu 'Serviços'
    Clicar no menu 'Sobre'
    Clicar no menu 'Contato'

Acessar instagran
    [Documentation]    Este teste valida o direcionamento para o intagran
    [Tags]             direcionamento_1
    Clicar no ícone do Instagran no cabeçalho
    Clicar no botão do Instagran no fale conosco agora

Acessar facebook
    [Documentation]    Este teste valida o direcionamento para o facebook
    [Tags]             direcionamento_2
    Clicar no ícone do facebook no cabeçalho
    Clicar no botão do facebook no fale conosco agora

Acessar whatsapp
    [Documentation]    Este teste valida o direcionamento para o whatsap
    [Tags]             direcionamento_3
    Clicar no ícone do whatsapp no cabeçalho
    Clicar no botão do whatsapp no fale conosco agora

Navegar menus do Nossos Serviços
    [Tags]             menus_serviços
    Menu 'Casamento'
    Menu 'Formatura'
    Menu 'Primeira Comunhão'
    Menu 'Aniversário'
    Menu 'Festas Corporativas'
    Menu 'Churrascos em Geral'