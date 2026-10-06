// desafio
function escolherPersonagem(){
    let personagem=prompt("Escolha uma classe, Guerreiro, Mago, ou Arqueiro").toLowerCase()
    let nivel=Number(prompt('Qual é seu nivel? (Numero entre 1 e 100)'))

    if(personagem === "guerreiro" && nivel > 60){
        alert("Você é um guerreiro lendario!! ")
        }else if (personagem ==="mago" &&  nivel >= 50){
            alert("Você domina a magia suprema! ")  
        }else if (personagem === "arqueiro" && nivel >=50){
            alert("Você é um mestre das flechas!")
        } else{
            alert("continue tentando, uma hr vai dar")
        }
}
escolherPersonagem()
