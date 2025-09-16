*** Settings ***
Documentation    Esta suite testa o site https://fabianofernandeseventos.com.br/
Resource         site_resoucers.robot
Test Setup       Abrir o navegador
#Test Teardown    Fechar o navegador



*** Test Cases ***
Acesso ao Site
    [Documentation]    Este teste valida o acesso ao site https://fabianofernandeseventos.com.br/
    [Tags]             site
    Verificar o título Fabiano Fernandes Eventos - Buffet e Churrasco

Entrar em Contato
    [Tags]             botão

    Clicar no botão 'Entre em Contato'

# Navegar menus do cabeçalho
#     [Documentation]    Este teste valida a navegação entre os itens de menu do cabeçalho
#     [Tags]             menus
#     Clicar no menu 'Início'
#     Clicar no menu 'Serviços'
#     Clicar no menu 'Sobre'
#     Clicar no menu 'Contato'

# Acessar instagran
#     [Documentation]    Este teste valida o direcionamento para o intagran
#     [Tags]             direcionamento_1
#     Clicar no ícone do cabeçalho
#     Verificar se abre a página do instagran
#     Verificar se apresenta a página de "fabiano.fernandes.75873"
#     Clicar no botão do fale conosco agora
#     Verificar se abre a página do instagran
#     Verificar se apresenta a página de "fabiano.fernandes.75873"

# Acessar facebook
#     [Documentation]    Este teste valida o direcionamento para o facebook
#     [Tags]             direcionamento_2
#     Clicar no ícone do cabeçalho
#     Verificar se abre a página do facebook
#     Verificar se apresenta a página de "Fabiano Fernandes"
#     Clicar no botão do fale conosco agora
#     Verificar se abre a página do facebook
#     Verificar se apresenta a página de "Fabiano Fernandes"

# Acessar whatsap
#     [Documentation]    Este teste valida o direcionamento para o whatsap
#     [Tags]             direcionamento_3
#     Clicar no ícone do cabeçalho
#     Verificar se abre a página do whatsapp
#     Verificar se apresenta o número "+55 47 99172-7277"
#     Clicar no botão do fale conosco agora
#     Verificar se abre a página do whatsapp
#     Verificar se apresenta o número "+55 47 99172-7277"

# Navegar menus do Nossos Serviços
#     [Tags]             menus_serviços
#     Menu 'Casamento'
#     Verificar se encontra o menu 'Casamento'
#     Menu 'Formatura'
#     Verificar se encontra o menu 'Formatura''
#     Menu 'Primeira Comunhão'
#     Verificar se encontra o menu 'Primeira Comunhão'
#     Menu 'Aniversário'
#     Verificar se encontra o menu 'Aniversário'
#     Menu 'Festas Corporativas'
#     Verificar se encontra o menu 'Festas Corporativas'
#     Menu 'Churrascos em Geral'
#     Verificar se encontra o menu 'Churrascos em Geral'