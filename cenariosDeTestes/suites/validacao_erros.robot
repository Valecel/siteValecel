*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    http://localhost:8000    chrome
Suite Teardown    Close Browser

*** Test Cases ***
Exibir erro ao buscar produto inexistente
    Input Text    id:searchInput    ProdutoInexistente
    Click Button    id:searchBtn
    Wait Until Page Contains    nenhum produto foi encontrado
    Page Should Contain    nenhum produto foi encontrado

Exibir erro ao enviar formulário incompleto
    Click Button    id:btnEnviarOrcamento
    Wait Until Page Contains    obrigatório
    Page Should Contain    obrigatório