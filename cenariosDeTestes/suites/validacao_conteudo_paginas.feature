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

Feature: Validação da segunda página

  Scenario: Verificar presença do texto HostGator
    Given que estou na segunda página
    When a página for carregada
    Then devo visualizar o texto "HostGator"

  Scenario: Verificar presença do texto HostGator na página de produtos
    Given que estou na página de produtos
    When a página for carregada
    Then devo visualizar o texto "HostGator"

  Scenario: Verificar presença do texto HostGator na página de carrinho
    Given que estou na página de carrinho
    When a página for carregada
    Then devo visualizar o texto "HostGator"
