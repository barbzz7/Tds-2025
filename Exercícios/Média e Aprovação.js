// Pede a primeira nota e transforma a resposta em número
let nota1 = Number(prompt("Digite sua primeira nota:"));

// Pede a segunda nota e transforma a resposta em número
let nota2 = Number(prompt("Digite sua segunda nota:"));

// Pede a nota referente à frequência nas aulas
let nota3 = Number(prompt("Digite de 0-10 quanto está sua frequência nas aulas?"));

// Calcula a média das três notas
let nota = (nota1 + nota2 + nota3) / 3;

// Verifica se a média é maior ou igual a 7
// Se for, o resultado será "Aprovado"
// Caso contrário, será "Reprovado"
const resultado = nota >= 7 ? "Aprovado" : "Reprovado";

// Mostra o resultado na tela
alert(resultado);
