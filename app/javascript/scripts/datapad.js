window.addEventListener('turbolinks:load', () => {

    $('#fix').height('300px');
    $("#fix").append("<p>" + $('#datapad').height() + "</p>");
    $('#datapad').height(window.innerHeight);
    $("#fix").append("<p>" + $('#datapad').height() + "</p>");


    setTimeout(() => {
        document.getElementById('connection').innerHTML = "Connection Active";
    }, 3000)

    document.getElementById('connection-tracker').style.marginLeft = "10%";
    const connection = setInterval(() => {
        let margin = Math.floor(Math.random()*90)
        document.getElementById('connection-tracker').style.marginLeft = `${margin}%`;
        
    }, 3000)

    document.querySelectorAll('.brawn').forEach(item => {
        const brawn = document.getElementById('brawn');
        item.addEventListener('mouseover', (event) => {

            brawn.style.backgroundColor = 'white';
            brawn.style.color = '#111';

        });

        item.addEventListener('mouseout', (event) => {

            brawn.style.background = 'none';
            brawn.style.color = 'white';
        })
    })

    document.querySelectorAll('.agility').forEach(item => {
        const agility = document.getElementById('agility');
        item.addEventListener('mouseover', (event) => {

            agility.style.backgroundColor = 'white';
            agility.style.color = '#111';

        });

        item.addEventListener('mouseout', (event) => {

            agility.style.background = 'none';
            agility.style.color = 'white';
        })
    })

    document.querySelectorAll('.intellect').forEach(item => {
        const intellect = document.getElementById('intellect');
        item.addEventListener('mouseover', (event) => {

            intellect.style.backgroundColor = 'white';
            intellect.style.color = '#111';

        });

        item.addEventListener('mouseout', (event) => {

            intellect.style.background = 'none';
            intellect.style.color = 'white';
        })
    })

    document.querySelectorAll('.cunning').forEach(item => {
        const cunning = document.getElementById('cunning');
        item.addEventListener('mouseover', (event) => {

            cunning.style.backgroundColor = 'white';
            cunning.style.color = '#111';

        });

        item.addEventListener('mouseout', (event) => {

            cunning.style.background = 'none';
            cunning.style.color = 'white';
        })
    })

    document.querySelectorAll('.willpower').forEach(item => {
        const willpower = document.getElementById('willpower');
        item.addEventListener('mouseover', (event) => {

            willpower.style.backgroundColor = 'white';
            willpower.style.color = '#111';

        });

        item.addEventListener('mouseout', (event) => {

            willpower.style.background = 'none';
            willpower.style.color = 'white';
        })
    })

    document.querySelectorAll('.presence').forEach(item => {
        const presence = document.getElementById('presence');
        item.addEventListener('mouseover', (event) => {

            presence.style.backgroundColor = 'white';
            presence.style.color = '#111';

        });

        item.addEventListener('mouseout', (event) => {

            presence.style.background = 'none';
            presence.style.color = 'white';
        })
    })

    document.getElementById('hamburger').addEventListener('click', () => {
        console.log("hamburgerclick");
        navbar = document.getElementById('navbar').classList.toggle('open');
        console.log(navbar);
    })

});