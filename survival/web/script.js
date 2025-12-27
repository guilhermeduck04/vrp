let segundos = false;
let active = false;
$(function () {
    window.addEventListener("message", function (event) {
        var seconds = event.data.deathtimer
        
        var item = event.data;
        if (item.setDisplay) {
            $("body").fadeIn(200);
            
            if (seconds > 0) {
                $(".content-progress b").text(`${seconds} SEGUNDOS`)
            } else {
                $(".content-progress p").text(`APERTE [ E ] PARA TEORNAR QUANDO ZERAR OS SEGUNDOS`)
            }
        } else {
            $("body").fadeOut(1000);
            active = false
        }
    });
});

function progressBar() {
    if(active) return;
    else{   
        console.log(active)
        active = true;
        $('.progress span').css('width', '0vw')
    }
}

function abrirModal() {
    if (segundos) return
    segundos = true;
    document.getElementById("popup-1").classList.toggle("active");

    setTimeout(function () { segundos = false }, 5000);
}

function fecharModal() {
    document.getElementById("popup-1").classList.toggle("active");
}

function simAceita() {
    document.getElementById("popup-1").classList.toggle("active");
    $.post("https://survival/ButtonRevive");
}