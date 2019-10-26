//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

//= require jquery3
//= require popper
//= require bootstrap-sprockets

window.onload = function () {
    this.msg_changer();
}

function msg_changer() {
    var now = new Date();
    var hour = now.getHours();

    if(hour >= 5 && hour <= 8){
        var msg_content = document.getElementById("msg");
        msg_content.innerHTML = '5-8';
    }
    else if(hour >= 9 && hour <= 11){
        var msg_content = document.getElementById("msg");
        msg_content.innerHTML = '9-11';
    }
    else if(hour >= 12 && hour <= 13){
        var msg_content = document.getElementById("msg");
        msg_content.innerHTML = '12-13';
    }
    else if(hour >= 14 && hour <= 17){
        var msg_content = document.getElementById("msg");
        msg_content.innerHTML = '14-17';
    }
    else if(hour >= 18 && hour <= 23){
        var msg_content = document.getElementById("msg");
        msg_content.innerHTML = '18-23';
    }
}