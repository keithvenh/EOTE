$(document).ready(function() {

    document.getElementById('connection-tracker').style.marginLeft = "250px";
    const connection = setInterval(() => {
        let margin = Math.floor(Math.random()*20)
        document.getElementById('connection-tracker').style.marginLeft = `${margin}%`;
        
    }, 5000)

});