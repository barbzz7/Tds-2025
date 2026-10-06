// Cria um objeto com o nome e a idade de uma pessoa
const pessoa = {
    nome: "Eduardo",
    idade: 1000
};

// Percorre as propriedades do objeto
for (const informacao in pessoa) {

    // Mostra o nome da propriedade e o valor dela
    alert(`${informacao}: ${pessoa[informacao]}`);
}
