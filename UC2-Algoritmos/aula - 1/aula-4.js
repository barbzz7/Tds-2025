// Função responsável por escolher uma roupa de acordo com a temperatura
function escolherRoupa(){

    // Pede para o usuário informar a temperatura
    // Number() transforma a resposta em número
    let temperatura = Number(prompt("Qual a temperatura atual (°C) "))

    // Verifica se a temperatura é maior que 30°C
    if(temperatura > 30){
        alert("Vista roupas leves, Está muito quente!")

    // Verifica se a temperatura está entre 20°C e 30°C
    }else if(temperatura >= 20 && temperatura <= 30){
        alert("Use algo confortável, como camiseta e calça")

    // Verifica se a temperatura está entre 10°C e 19°C
    }else if(temperatura >= 10 && temperatura <= 19){
        alert("Coloque um casaco, está fresquinho")

    // Verifica se a temperatura é menor que 10°C
    }else if(temperatura < 10){
        alert("Vista um casaco bem quente! Está frio!")

    // Caso o valor informado não seja válido
    }else{
        alert("Por favor, informe uma temperatura válida!!!")
    }
}

// Chama a função para iniciar o programa
escolherRoupa()
