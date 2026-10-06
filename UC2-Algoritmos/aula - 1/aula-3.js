// Função que verifica se a pessoa pode entrar
// A função recebe a idade como parâmetro
function podeEntrar(idade){

    // Verifica se a idade é maior ou igual a 16
    if(idade >= 16){
        // Se a condição for verdadeira, mostra essa mensagem
        alert("Pode entrar")

    }else{
        // Se a idade for menor que 16, mostra essa mensagem
        alert("Nao vai rolar amg")
    }
}

// Pede a idade para o usuário
// Number() transforma a resposta do prompt em número
let entrada = Number(prompt("Digite sua idade: "))

// Chama a função e passa a idade digitada pelo usuário
podeEntrar(entrada)
