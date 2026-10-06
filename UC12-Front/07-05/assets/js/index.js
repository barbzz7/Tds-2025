const div = document.querySelector("div")
const btn = document.querySelector("button")



btn.addEventListener("click", () =>{
//para criar um novo elemneto ussamos docmnet.cretElements(Tagdo elemneto)
 const box = document.createElement("div")//cria
    box.classList.add("box")//da uma class
    div.appendChild(box)//coloca na div

});

//elemneto remove

 box.addEventListener("click", () => {
        box.remove();
    });

    box.appendChild(box)