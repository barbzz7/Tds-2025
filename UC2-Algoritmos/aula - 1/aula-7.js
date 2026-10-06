// Função responsável por verificar a rede social favorita do usuário
function redeSocialFavorita(){

    // Pergunta ao usuário qual rede social ele mais usa
    let redeSocial = prompt("Qual rede social você mais usa? Instagram, TikTok, Twitter, Facebook ou Linkedin.")

    // Verifica qual rede social foi escolhida
    switch(redeSocial){

        // Se o usuário escolher Instagram
        case "Instagram":
            alert("Perfeito para fotos e stories!")
            break

        // Se o usuário escolher TikTok
        case "TikTok":
            alert("Vídeos curtos e muita dança")
            break

        // Se o usuário escolher Twitter
        case "Twitter":
            alert("O lugar das notícias rápidas e memes")
            break

        // Se o usuário escolher Facebook
        case "Facebook":
            alert("Clássico, mas ainda forte para grupos")
            break

        // Se o usuário escolher Linkedin
        case "Linkedin":
            alert("Rede profissional e network")
            break

        // Caso não escolha nenhuma das opções
        default:
            alert("Rede social não encontrada!")
    }
}

// Chama a função para iniciar o programa
redeSocialFavorita()
