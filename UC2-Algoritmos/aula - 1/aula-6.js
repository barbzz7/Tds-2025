// Pede para o usuário digitar um número de 1 a 5
// Number() transforma a resposta do prompt em número
let dia = Number(prompt("Digite um numero de 1 a 5 para o dia da semana: "))

// Verifica qual número foi escolhido pelo usuário
switch(dia){

    // Se o número for 1
    case 1:
        alert("Segunda-feira: mais um dia, lindo dia..")
        // Para o switch aqui e não verifica os próximos casos
        break

    // Se o número for 2
    case 2:
        alert("Terça-feira: é quase quarta")
        break

    // Se o número for 3
    case 3:
        alert("Quarta-feira: dia de jogo")
        break

    // Se o número for 4
    case 4:
        alert("Quinta-feira: amanhã já é sexta!")
        break

    // Se o número for 5
    case 5:
        alert("Sexta-feira: Finalmente!!!!!")
        break

    // Se não for nenhum dos números anteriores
    default:
        alert("dia invalido")
}
