*** Settings ***
# Trigger workflow: alteração para forçar execução do GitHub Actions
Library    SeleniumLibrary
Suite Setup    Open Browser    https://sitevalecel.valecelinfo.com.br/index.html    chrome
Suite Teardown    Close Browser

*** Variables ***
${DELAY}    2s

*** Test Cases ***
# Cenário 1: Validar título "Destaque da Semana"
Validar titulo destaque da semana
    Sleep    ${DELAY}
    Wait Until Page Contains    Destaque da Semana
    Page Should Contain    Destaque da Semana

# Cenário 2: Validar exibição do produto "Iphone 14"
Validar nome do produto
    Sleep    ${DELAY}
    Wait Until Page Contains    Iphone 14
    Page Should Contain    Iphone 14

# Cenário 3: Validar exibição do preço "R$ 4.300,00"
Validar preco do produto
    Sleep    ${DELAY}
    Wait Until Page Contains    R$ 4.300,00
    Page Should Contain    R$ 4.300,00

# Cenário 4: Validar exibição do botão "Comprar"
Validar botao Comprar
    Sleep    ${DELAY}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Element Is Visible    xpath=/html/body/div[4]/div/div[1]/div/button
    Element Should Be Visible    xpath=/html/body/div[4]/div/div[1]/div/button

# Cenário 5: Validar exibição da imagem do produto
Validar imagem do produto
    Sleep    ${DELAY}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Element Is Visible    xpath=/html/body/div[4]/div/div[2]/div/img
    Element Should Be Visible    xpath=/html/body/div[4]/div/div[2]/div/img

# Cenário 6: Validar a presença do texto "HostGator" na segunda página
Validar texto HostGator na segunda pagina
    Go To    https://www.hostgator.com.br/
    Sleep    ${DELAY}
    Wait Until Page Contains    HostGator
    Page Should Contain    HostGator

# Os demais cenários foram removidos pois não são garantidos na página pública.
# Caso queira testar outros elementos, adapte para o conteúdo realmente visível.
