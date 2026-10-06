// Função responsável por escolher a casa de Hogwarts
function chapeuSeletor(){

    // Pergunta ao usuário qual qualidade mais combina com ele
    // toLowerCase() transforma a resposta em letras minúsculas
    let qualidade = prompt("Qual qualidade mais define você: Coragem, Amizade, Ambição ou Sabedoria?").toLowerCase()

    // Verifica se a qualidade escolhida foi coragem
    if(qualidade === "coragem"){
        alert("Você foi escolhido para a Grifinoria!")

    // Verifica se a qualidade escolhida foi amizade
    }else if(qualidade === "amizade"){
        alert("Você foi escolhido para a Lufa-lufa!")

    // Verifica se a qualidade escolhida foi ambição
    }else if(qualidade === "ambição"){
        alert("Você foi escolhido para Sonserina!")

    // Verifica se a qualidade escolhida foi sabedoria
    }else if(qualidade === "sabedoria"){
        alert("Você foi escolhido para a Corvinal!")

    // Caso o usuário digite uma opção diferente das anteriores
    }else{
        alert("Essa casa não existe!, Vc é um trouxa?")
    }
}

// Chama a função para iniciar o programa
chapeuSeletor()
