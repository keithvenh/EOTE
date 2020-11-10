$('.skills.new').ready(function(){

    console.log("TurbolinksLoad");
    skill = document.getElementById('skill');
    attr = document.getElementById('attribute');
    cat = document.getElementById('category');
    skill.addEventListener("change", function(event) {
        console.log("Changed");
        console.log(this.value);

        switch (this.value) {
            case "Astrogation":
            case "Computers":
            case "Mechanics":
            case "Medicine":
                attr.value = "Intellect";
                cat.value = "General";
                break;
            case "Athletics":
            case "Resilience":
                attr.value = "Brawn";
                cat.value = "General";
                break;
            case "Charm":
            case "Cool":
            case "Leadership":
            case "Negotiation":
                attr.value = "Presence";
                cat.value = "General";
                break;
            case "Coercion":
            case "Discipline":
            case "Vigilance":
                attr.value = "Willpower";
                cat.value = "General";
                break;
            case "Coordination":
            case "Piloting (Planetary)":
            case "Piloting (Space)":
            case "Stealth":
                attr.value = "Agility";
                cat.value = "General";
                break;
            case "Deception":
            case "Perception":
            case "Skulduggery":
            case "Streetwise":
            case "Survival":
                attr.value = "Cunning";
                cat.value = "General";
                break;
            case "Brawl":
            case "Melee":
                attr.value = "Brawn";
                cat.value = "Combat";
                break;
            case "Ranged (Light)":
            case "Ranged (Heavy)":
            case "Gunnery":
                attr.value = "Agility";
                cat.value = "Combat";
                break;
            default:
                attr.value = "Intellect";
                cat.value = "Knowledge";
        }
    })
    

});