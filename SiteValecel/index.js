
function onChangeEmail() {
    toggleButtonDisabled();
    toggleEmailsError();
}
function onChangePassword() {
    toggleButtonDisabled();
    togglePasswordError();
}
function login() {
    firebase.auth().signInWithEmailAndPassword(
        form.email().value, form.password().value
    ).then(response => {
        window.location.href = '../../index.html';
    }).catch(error => {
        alert(error.code);
        console.log(getErrorMessage(error));
    });
}
function getErrorMessage(error) {
    if (error.code === 'auth/invalid-credential') {
        return 'Usuário não encontrado. Verifique o e-mail digitado.';
    }
}

function isEmailValid() {
    const email = form.email().value;
    if (!email) {
        return false;
    }
    return validateEmail(email);
}
function toggleEmailsError() {
    const email = form.email().value;
    form.EmailRequiredError().style.display = email ? 'none' : 'block';
    form.EmailInvalidError().style.display = validateEmail(email) ? 'none' : 'block';
}

function togglePasswordError() {
    const password = form.password().value;
    form.PasswordRequiredError().style.display = password ? 'none' : 'block';
}

function toggleButtonDisabled() {
    const emailValid = isEmailValid();
    const passwordValid = isPasswordValid();
    form.recoverPassword().disabled = !emailValid || !passwordValid;
}

function isPasswordValid() {
    const password = form.password().value;
    if (!password) {
        return false;
    }
    return true;
}
const form = {
    email: () => document.getElementById('email'),
    password: () => document.getElementById('password'),
    recoverPassword: () => document.getElementById('recover-password-button'),
    EmailRequiredError: () => document.getElementById('email-required-error'),
    EmailInvalidError: () => document.getElementById('email-invalid-error'),
    PasswordRequiredError: () => document.getElementById('password-required-error')
}

function validateEmail(email) {
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}