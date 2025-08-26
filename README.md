<!-- Trigger workflow: alteração para forçar execução do GitHub Actions -->
# ValeCel – E-commerce

## Visão Geral do Projeto

O ValeCel é um projeto de e-commerce desenvolvido como estudo de automação de testes e validação de páginas web. O objetivo é garantir a qualidade da homepage e de páginas relacionadas, utilizando testes automatizados com Robot Framework e SeleniumLibrary, além de documentação BDD (Gherkin).

O projeto contempla:
- Estrutura de site responsivo com HTML, CSS e JavaScript
- Página inicial com destaque de produto, preço, botão de compra e imagem
- Integração de testes automatizados para validação de elementos essenciais
- Pipeline de CI/CD sugerido para execução dos testes

## Estrutura do Projeto

```
cenariosDeTestes/
  suites/
    validarMenuseItensDaPagina.robot   # Testes automatizados Robot Framework
    validacao_conteudo_paginas.feature # Cenários BDD Gherkin
SiteValecel/
  index.html, enviarform.js, css/, imagens/  # Código-fonte do site
log.html, output.xml, report.html           # Relatórios de execução dos testes
```

## Tecnologias Utilizadas
- HTML5, CSS3, JavaScript
- Robot Framework (linguagem de automação dos testes)
- SeleniumLibrary
- Gherkin (BDD)
- Git & GitHub

## Como Instalar e Executar os Testes Automatizados (Robot Framework)

Os testes automatizados deste projeto são escritos em Robot Framework, uma linguagem de automação de testes baseada em palavras-chave, fácil de ler e manter.

### Instalação do Robot Framework e dependências

1. **Instale o Python 3:**
   - Baixe e instale o Python em https://www.python.org/downloads/
   - Certifique-se de adicionar o Python ao PATH durante a instalação.

2. **Instale o Robot Framework:**
   Abra o terminal (PowerShell ou CMD) e execute:
   ```
   pip install robotframework
   ```

3. **Instale o SeleniumLibrary:**
   ```
   pip install robotframework-seleniumlibrary
   ```

4. **Instale o navegador Chrome e o ChromeDriver:**
   - Baixe o Google Chrome: https://www.google.com/chrome/
   - Baixe o ChromeDriver compatível: https://chromedriver.chromium.org/downloads
   - Extraia o executável do ChromeDriver e coloque-o em uma pasta do PATH (ou na mesma pasta do projeto).

5. **(Opcional) Instale o Robot Framework Browser para outros navegadores:**
   ```
   pip install robotframework-browser
   rfbrowser init
   ```

### Como Executar os Testes

1. Na raiz do projeto, execute:
   ```
   robot cenariosDeTestes/suites/validarMenuseItensDaPagina.robot
   ```
2. Os relatórios serão gerados em `log.html`, `report.html` e `output.xml`.

### Observações Importantes
- Os seletores dos testes foram ajustados para garantir robustez e compatibilidade com a página pública.
- O delay entre os testes permite visualização manual da execução.
- Caso a estrutura do site mude, os seletores XPath podem precisar de atualização.
- O pipeline de CI/CD pode ser configurado para rodar os testes automaticamente a cada push.

## Como preparar o ambiente de desenvolvimento e executar os testes

### 1. Instale o Visual Studio Code (VSCode)
- Baixe em: https://code.visualstudio.com/
- Recomenda-se instalar a extensão oficial do Robot Framework para VSCode:
  - Pesquise por "Robot Framework Language Server" no marketplace do VSCode e instale.

### 2. Instale o Python 3
- Baixe em: https://www.python.org/downloads/
- Durante a instalação, marque a opção para adicionar o Python ao PATH.
- Para verificar a instalação, execute no terminal:
  ```
  python --version
  ```

### 3. Instale as dependências do projeto
Abra o terminal na raiz do projeto e execute:
```powershell
python -m pip install --upgrade pip
pip install robotframework
pip install robotframework-seleniumlibrary
pip install selenium
pip install webdriver-manager
```

### 4. Instale o Google Chrome
- Baixe e instale: https://www.google.com/chrome/

### 5. (Opcional) Instale o ChromeDriver manualmente
- Normalmente o webdriver-manager gerencia o ChromeDriver automaticamente.
- Se necessário, baixe em: https://chromedriver.chromium.org/downloads

### 6. Execute os testes Robot Framework
No terminal, execute:
```powershell
robot cenariosDeTestes/suites/validarMenuseItensDaPagina.robot
```
Ou para rodar todos os testes da pasta:
```powershell
robot cenariosDeTestes/suites/
```

#### Execução manual por tag (exemplo: tag 'regressivo')
Se desejar rodar apenas os testes marcados com a tag `regressivo`, utilize:
```powershell
robot -i regressivo cenariosDeTestes/suites/
```

Os relatórios serão gerados em `log.html`, `report.html` e `output.xml` na raiz do projeto ou na pasta `results/`.

### 7. Dicas para ambiente Windows
- Recomenda-se usar o terminal PowerShell ou o terminal integrado do VSCode.
- Se houver erro de PATH, reinicie o terminal após instalar Python ou Chrome.

### 8. Execução dos testes via CI/CD (GitHub Actions)
- O pipeline está configurado para rodar automaticamente em push ou pull request nas branches `main` e `testesValidosQa`.
- Veja o arquivo `.github/workflows/ci.yml` para detalhes do workflow.

## Cenários e Testes Automatizados

### Plano de Teste: Validação de Conteúdo das Páginas do Site ValeCel
### Ciclo de Teste: Ciclo de Testes de Conteúdo – Páginas Iniciais

#### Página Inicial (https://sitevalecel.valecelinfo.com.br/index.html)

1. **Validar título "Destaque da Semana"**
   - Garante que o título da seção destaque está presente.
2. **Validar exibição do produto "Iphone 14"**
   - Verifica se o nome do produto está visível.
3. **Validar exibição do preço "R$ 4.300,00"**
   - Confirma a presença do preço correto do produto.
4. **Validar exibição do botão "Comprar"**
   - Valida se o botão de compra está visível e acessível.
5. **Validar exibição da imagem do produto**
   - Garante que a imagem do produto em destaque está visível.

#### Segunda Página (https://www.hostgator.com.br/)
6. **Validar a presença do texto "HostGator"**
   - Confirma que o texto "HostGator" está presente na página.

## Contribuição
- Para contribuir, faça um fork do repositório, crie uma branch, realize suas alterações e envie um pull request.
- Dúvidas ou sugestões podem ser abertas como issues no GitHub.

---

**Desenvolvido para fins de estudo e demonstração de automação de testes em e-commerce.**
# trigger workflow
# trigger workflow again
# trigger workflow via actions
# trigger workflow after branch rename
# trigger workflow after fixing branch name in workflow
# trigger workflow after yaml fix
# trigger workflow after yaml force-fix
# trigger workflow after yaml clean-fix
# trigger workflow after full yaml replace
# trigger workflow after full yaml recreation
# trigger workflow after full yaml overwrite
# trigger workflow after yaml overwrite again
# trigger workflow after yaml overwrite final
# trigger workflow after yaml overwrite with explicit on
# trigger workflow after yaml overwrite with explicit on (final)
# trigger workflow to test execution
