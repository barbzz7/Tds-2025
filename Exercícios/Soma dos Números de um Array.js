// Cria um array com vários números
const numeros = [2, 5, 2, 6, 9];

// Começa a soma com 0
let soma = 0;

// Percorre todos os números do array
for (let i = 0; i < numeros.length; i++) {

    // Adiciona o número atual à variável soma
    soma += numeros[i];
}

// Mostra o resultado da soma
alert(soma);
