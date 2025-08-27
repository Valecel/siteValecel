*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    https://sitevalecel.valecelinfo.com.br/index.html    chrome    arguments=--headless --no-sandbox --disable-dev-shm-usage --disable-gpu --window-size=1920,1080
Suite Teardown    Close Browser

*** Variables ***
${DELAY}    2s

*** Test Cases ***
# Cenário 1: Validar título "Destaque da Semana"
Validar titulo destaque da semana
    [Tags]    regressivo
    Sleep    ${DELAY}
    Wait Until Page Contains    Destaque da Semana
    Page Should Contain    Destaque da Semana

# Cenário 2: Validar exibição do produto "Iphone 14"
Validar nome do produto
    [Tags]    regressivo
    Sleep    ${DELAY}
    Wait Until Page Contains    Iphone 14
    Page Should Contain    Iphone 14

# Cenário 3: Validar exibição do preço "R$ 4.300,00"
Validar preco do produto
    [Tags]    regressivo
    Sleep    ${DELAY}
    Wait Until Page Contains    R$ 4.300,00
    Page Should Contain    R$ 4.300,00

# Cenário 4: Validar exibição do botão "Comprar"
Validar botao Comprar
    [Tags]    regressivo
    Sleep    ${DELAY}
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Element Is Visible    xpath=/html/body/div[4]/div/div[1]/div/button
    Element Should Be Visible    xpath=/html/body/div[4]/div/div[1]/div/button

# Cenário 5: Validar exibição da imagem do produto
Validar imagem do produto
    [Tags]    regressivo
    Sleep    5s
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Wait Until Element Is Visible    //img[contains(@src, 'imagem')]    10s
    Element Should Be Visible    //img[contains(@src, 'imagem')]
    Capture Page Screenshot
    Log    Screenshot salvo: ${OUTPUT DIR}/selenium-screenshot-1.png

# Cenário 6: Validar a presença do texto "HostGator" na página Carrinho
Validar texto HostGator na pagina carrinho
    [Tags]    carrinho
    Go To    https://sitevalecel.valecelinfo.com.br/carrinho.html
    Sleep    ${DELAY}
    Wait Until Page Contains    HostGator
    Page Should Contain    HostGator

# Cenário 7: Validar a presença do texto "HostGator" na página Produtos
Validar texto HostGator na pagina produtos
    [Tags]    produtos
    Go To    https://sitevalecel.valecelinfo.com.br/produtos.html
    Sleep    ${DELAY}
    Wait Until Page Contains    HostGator
    Page Should Contain    HostGator
