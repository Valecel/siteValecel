# language: pt
# Plano de Teste: Validação de Conteúdo das Páginas do Site ValeCel
# Ciclo de Teste: Ciclo de Testes de Conteúdo – Páginas Iniciais

Feature: Validação da primeira página

  Scenario: Verificar título "Destaque da Semana"
    Given que estou na página inicial
    When a página for carregada
    Then devo visualizar o título "Destaque da Semana"

  Scenario: Verificar nome do produto
    Given que estou na página inicial
    When a página for carregada
    Then devo visualizar o produto "Iphone 14"

  Scenario: Verificar preço do produto
    Given que estou na página inicial
    When a página for carregada
    Then devo visualizar o preço "R$ 4.300,00"

  Scenario: Verificar botão Comprar
    Given que estou na página inicial
    When a página for carregada
    Then devo visualizar o botão "Comprar"

  Scenario: Verificar imagem do produto
    Given que estou na página inicial
    When a página for carregada
    Then devo visualizar a imagem do produto

  Scenario: Verificar presença do texto HostGator
    Given a página carrinho é acessada
    When a página for carregada
    Then deve visualizar o texto "HostGator"

  Scenario: Verificar presença do texto HostGator
    Given a página Produtos é acessada
    When a página for carregada
    Then deve visualizar o texto "HostGator"
