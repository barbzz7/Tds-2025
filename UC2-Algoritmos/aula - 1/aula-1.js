// Desafio: escolher um personagem de acordo com a classe e o nível

// Função responsável por escolher e verificar o personagem
function escolherPersonagem(){

    // Pede para o usuário escolher uma classe
    // toLowerCase() transforma a resposta em letras minúsculas
    let personagem = prompt("Escolha uma classe, Guerreiro, Mago, ou Arqueiro").toLowerCase()

    // Pede o nível do personagem e transforma o valor recebido em número
    let nivel = Number(prompt("Qual é seu nivel? (Numero entre 1 e 100)"))

    // Verifica se escolheu Guerreiro e se o nível é maior que 60
    if(personagem === "guerreiro" && nivel > 60){
        alert("Você é um guerreiro lendario!! ")

    // Verifica se escolheu Mago e se o nível é maior ou igual a 50
    } else if (personagem === "mago" && nivel >= 50){
        alert("Você domina a magia suprema! ")

    // Verifica se escolheu Arqueiro e se o nível é maior ou igual a 50
    } else if (personagem === "arqueiro" && nivel >= 50){
        alert("Você é um mestre das flechas!")

    // Caso nenhuma das condições anteriores seja verdadeira
    } else {
        alert("continue tentando, uma hr vai dar")
    }
}

// Chama a função para iniciar o desafio
escolherPersonagem()
