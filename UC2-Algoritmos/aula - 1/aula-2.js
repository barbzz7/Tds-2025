// Função chamada verificarChuva que recebe o tempo como parâmetro
function verificarChuva(tempo){

    // Verifica se o tempo digitado é "chuvoso"
    if(tempo === "chuvoso"){
        // Mostra uma mensagem avisando para levar um guarda-chuva
        alert("parece que vai chover, leve um guarda-chuva!⛈️☂️")

    }else{
        // Caso o tempo não seja "chuvoso", mostra uma mensagem positiva
        alert("Tempo mais do que bom, rlx☀️😎")
    }
}

// Pede para o usuário informar como está o tempo
let tempoDigitado = prompt("Como esta o tempo?")

// Chama a função e passa a resposta do usuário como parâmetro
verificarChuva(tempoDigitado)
