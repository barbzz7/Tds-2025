const div = document.querySelector("div")
const btn = document.querySelector("button")

let contador = 0
let numeroDeItens = 0

btn.addEventListener("click", () => {
if(numeroDeItens == 0){
    contador = numeroDeItens;
}

    contador++;
    //para criar um novo elemneto ussamos docmnet.cretElements(Tagdo elemneto)
    const box = document.createElement("div")//cria
    box.classList.add("box")//da uma class
    div.appendChild(box)//coloca na div
    
    box.textContent = contador;
    
    box.addEventListener("click", () => {
        box.remove();
    });

    box.appendChild()
});

