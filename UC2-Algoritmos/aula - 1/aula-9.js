
Entrada de dados (variáveis)

let NF = 6 // Nota final
let NR = 8 // Nota de recuperação
let T1 = 7 // Nota do trabalho 1
let T2 = 9 // Nota do trabalho 2
let T3 = // Nota do trabalho 3

// Lógica de aprovação
// Verifica quais trabalhos tiveram nota maior que 6
let trabalhosAprovados = (T1 > 6) + (T2 > 6) + (T3 > 6)

// Junta todas as condições para saber se o aluno foi aprovado
// O aluno é aprovado se:
// - a nota final for maior que 7
// OU
// - a recuperação for maior ou igual a 8 E tiver pelo menos 2 trabalhos aprovados
let aprovado = (NF > 7) || (NR >= 8 && trabalhosAprovados >= 2)

// Mostra no console se foi aprovado (true) ou reprovado (false)
console.log(aprovado)


// Caso 7b

// Verifica se a pessoa possui a senha
let temSenha = true

// Verifica se a pessoa está no alcance da rede
let estanoAlcance = true

// Para acessar o Wi-Fi, as duas condições precisam ser verdadeiras
let podeAcessarWifi = (temSenha == true) && (estanoAlcance == true)

// Mostra o resultado no console
console.log(podeAcessarWifi)



// Caso 8

// Guarda a renda da pessoa
let renda = 2000

// Verifica se o nome da pessoa está limpo
let nomeLimpo = true

// Verifica se a pessoa pode fazer o empréstimo
// Ela precisa ter renda maior que 2000 E estar com o nome limpo
let podeFazerEmprestimo = (renda > 2000) && (nomeLimpo == true)

// Mostra true se puder fazer o empréstimo ou false se não puder
console.log(podeFazerEmprestimo)
