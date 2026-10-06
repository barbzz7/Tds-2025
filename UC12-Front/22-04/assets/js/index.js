//Guarda qual pergunta está ativa (Começa na posição do array)
let currentQuestionIndex = 0;
//pega todas as perguntads do html 

//document.getElementById -> pega apenas um elemento 
//document.querySelectorAll -> pega todos os elementos de uma classe e retorna uma lista (Tipo array)

const questions = document.querySelectorAll(".quiz-question");
//função para ativar a proxima pergunta 
function activateQuestion() {
    //questions[currentQuestionINDEX] -> acessa a perfunta atual dentro da lista 
    //classList.add("active") -> adiciona a classe "active"

    //essa cçlasse faz a pergunta aparecer n atela (via css)
    questions[currentQuestionIndex].classList.add("active");



    function answer(isCorrect) {

        if(IsCerto){
        questions[currentQuestionIndex].classList.remove("active");
        currentQuestionIndex = currentQuestionIndex + 1;

        activateQuestion();
} else {
        console.log("Errou")
    }

}}
// Sellenciona todos os botto