// Pede um número de 1 a 7 e transforma a resposta em número
let dia = Number(prompt("Digite um número de 1 a 7 para o dia da semana: "));

// Verifica qual número foi digitado
switch (dia) {

    // Se for 1, mostra a mensagem de segunda-feira
    case 1:
        alert("Segunda-feira: mais um dia, lindo dia..");
        break;

    // Se for 2, mostra a mensagem de terça-feira
    case 2:
        alert("Terça-feira: é quase quarta");
        break;

    // Se for 3, mostra a mensagem de quarta-feira
    case 3:
        alert("Quarta-feira: dia de jogo");
        break;

    // Se for 4, mostra a mensagem de quinta-feira
    case 4:
        alert("Quinta-feira: amanhã já é sexta!");
        break;

    // Se for 5, mostra a mensagem de sexta-feira
    case 5:
        alert("Sexta-feira: Finalmente!!!!!");
        break;

    // Se for 6, mostra a mensagem de sábado
    case 6:
        alert("Sábado: dia de limpar a casa");
        break;

    // Se for 7, mostra a mensagem de domingo
    case 7:
        alert("Domingou: dia de descansar porque amanhã já é segunda");
        break;

    // Caso o número não esteja entre 1 e 7
    default:
        alert("Dia inválido");
}
