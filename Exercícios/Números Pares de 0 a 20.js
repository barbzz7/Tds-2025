// Começa o número em 0
let numero = 0;

// Enquanto o número for menor ou igual a 20, o código continua repetindo
while (numero <= 20) {

    // Verifica se o número é par
    // O resto da divisão por 2 precisa ser igual a 0
    if (numero % 2 == 0) {

        // Mostra o número par na tela
        alert(numero);

        // Aumenta o número em 1
        numero++;

    } else {

        // Se o número for ímpar, apenas aumenta o número em 1
        numero++;
    }
}
