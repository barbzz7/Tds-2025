//pagar cada elemnto que vamos usar
//como podemos identificar cada elemento?

//entre no documento html e pegue o elemento que tem id "titulo"
const titulo = document.getElementById("Titulo")
const botao = document.getElementById("btn")

function trocaCor(){
    //trocar a cor do titulo
   titulo.styles.color = 'red'
}
trocaCor()

botao.addEventListener('click', trocaCor)

function mensagem() {
    alert("Mensagem alterada!")
}

function trocaMensagem() {
 titulo.textContent = "Nova mensagem"
}