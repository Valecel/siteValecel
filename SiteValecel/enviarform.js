document.getElementById("formOrcamento").addEventListener("submit", function(event) {
    event.preventDefault();

    // Captura os valores e remove espaços extras
    var nome = document.getElementById("nome").value.trim();
    var endereco = document.getElementById("endereco").value.trim();
    var email = document.getElementById("email").value.trim();
    var telefone = document.getElementById("telefone").value.trim();
    var msg = document.getElementById("mensagem").value.trim();

    // Verifica se algum campo está vazio
    if (!nome || !endereco || !email || !telefone || !msg) {
        alert("Por favor, preencha todos os campos antes de enviar.");
        return;
    }
//testegit
    // Valida o email
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(email)) {
        alert("Por favor, insira um endereço de email válido.");
        return;
    }

    // Monta a mensagem formatada
    var mensagem = `*Formulário de Orçamento*\n\n`
        + `*Nome:* ${sanitizeInput(nome)}\n`
        + `*Endereço:* ${sanitizeInput(endereco)}\n`
        + `*Telefone:* ${sanitizeInput(telefone)}\n`
        + `*E-mail:* ${sanitizeInput(email)}\n`
        + `*Mensagem:* ${sanitizeInput(msg)}`;

    // Codifica a mensagem para a URL
    var mensagemFormatada = encodeURIComponent(mensagem);

    // Cria o link do WhatsApp
    var url = `https://wa.me/5551996368374?text=${mensagemFormatada}`;

    // Abre o link no WhatsApp
    window.open(url, '_blank');
    document.getElementById("formOrcamento").reset();
});

function sanitizeInput(input) {
    var element = document.createElement('div');
    element.innerText = input;
    return element.innerHTML;
}
