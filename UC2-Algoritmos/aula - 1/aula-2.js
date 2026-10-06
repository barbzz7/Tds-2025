//funçao cahamada verificarChuva que recebe uma string se o tempo for chuvoso
function verificarChuva(tempo){
    if(tempo === "chuvoso"){
        alert("parece que vai chover, leve um guarda-chuva!⛈️☂️")
    }else{
        alert("Tempo mais do que bom, rlx☀️😎")
    }
}
let tempoDigitado = prompt("Como esta o tempo?")
verificarChuva(tempoDigitado)
