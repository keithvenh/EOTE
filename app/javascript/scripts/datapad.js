document.addEventListener("DOMContentLoaded",function(){

    document.getElementById('connection-tracker').style.marginLeft = "10px";
    document.getElementById('connection-tracker').style.marginRight = "10px";
    const connection = setInterval(() => {
        let margin = Math.floor(Math.random()*20)
        document.getElementById('connection-tracker').style.marginLeft = `${margin}%`;
        document.getElementById('connection-tracker').style.marginRight = `${margin}%`;
        
    }, 5000)

});