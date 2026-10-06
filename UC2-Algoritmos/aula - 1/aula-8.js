// Função responsável por verificar o modo de transporte escolhido
function modoTransporte(){

    // Pergunta ao usuário qual transporte ele irá usar
    let transporte = prompt("Qual modo de transporte você irá usar? Carro, ônibus, bicicleta, metrô ou a pé?")

    // Verifica qual transporte foi escolhido
    switch(transporte){

        // Se escolher carro
        case "carro":
            alert("Não esqueça de revisar o combustível!")
            break

        // Se escolher ônibus
        case "onibus":
            alert("Fique de olho no ponto e na carteira")
            break

        // Se escolher bicicleta
        case "bicicleta":
            alert("Use capacete e respeite as regras de trânsito.")
            break

        // Se escolher metrô
        case "metro":
            alert("Evite horários de pico para viajar tranquilo")
            break

        // Se escolher a pé
        case "a pe":
            alert("Aproveite para escutar música e relaxar")
            break

        // Caso nenhuma das opções seja escolhida
        default:
            alert("Escolha um modo de transporte válido para receber um conselho!!")
    }
}

// Chama a função para iniciar o programa
modoTransporte()
