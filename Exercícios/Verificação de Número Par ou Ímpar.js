// Pede um número ao usuário e transforma a resposta em número
let numero = Number(prompt("Digite o número:"));

// Verifica se o número é divisível por 2
if (numero % 2 == 0) {

    // Se o resto da divisão for 0, o número é par
    alert("Esse número é par");

} else {

    // Se o resto for diferente de 0, o número é ímpar
    alert("Esse número é ímpar");
}
