document.addEventListener("DOMContentLoaded",function(){

    document.getElementById('skills').addEventListener("change", function(event) {
        console.log("Changed");
        console.log(this.value);

        switch (this.value) {
            case "Astrogation":
            case "Computers":
            case "Mechanics":
            case "Medicine":
                console.log("General Intellect");
                break;
            case "Athletics":
            case "Resilience":
                console.log("General Brawn");
                break;
            case "Charm":
            case "Cool":
            case "Leadership":
            case "Negotiation":
                console.log("General Presence");
                break;
            case "Coercion":
            case "Discipline":
            case "Vigilance":
                console.log("General Willpower");
                break;
            case "Coordination":
            case "Piloting (Planetary)":
            case "Piloting (Space)":
            case "Stealth":
                console.log("General Agility");
                break;
            case "Deception":
            case "Perception":
            case "Skulduggery":
            case "Streetwise":
            case "Survival":
                console.log("General Cunning");
                break;
            case "Brawl":
            case "Melee":
                console.log("Combat Brawn");
                break;
            case "Ranged (Light)":
            case "Ranged (Heavy)":
            case "Gunnery":
                console.log("Combat Agility");
                break;
            default:
                console.log("Knowledge Intellect");
        }
    })
    

});