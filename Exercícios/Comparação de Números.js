// Pede o primeiro número ao usuário
let n1 = prompt("Digite um número: ");

// Pede o segundo número ao usuário
let n2 = prompt("Digite outro número: ");

// Função que verifica qual número é maior
function maior() {

    // Verifica se n1 é menor que n2
    if ((n1 - n2) < 0) {
        alert(`O maior número é ${n2}`);

    // Verifica se n1 é maior que n2
    } else if ((n1 - n2) > 0) {
        alert(`O maior número é ${n1}`);

    // Caso nenhum seja maior, os números são iguais
    } else {
        alert("Os números são iguais");
    }
}

// Chama a função
maior(n1, n2);
