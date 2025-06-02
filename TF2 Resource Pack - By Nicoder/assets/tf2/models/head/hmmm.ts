for (const tf2class of ["scout", "sniper", "soldier", "spy", "heavy", "demoman", "pyro", "engineer", "medic"]) {
    // Deno.mkdirSync(`/Users/nicolinowill/Documents/GitHub/tf2_mc/TF2 Resource Pack - By Nicoder/assets/tf2/textures/head/${tf2class}`, {recursive: true})
    for (const team of ["red", "blu"]) {
        // let filename = 
        Deno.writeTextFileSync(
            `${import.meta.dirname}/uber/${tf2class}_${team}.json`,
            JSON.stringify({
                credit: "Made with Blockbench",
                parent: "tf2:head/_default_",
                textures: {
                    0: `tf2:head/uber/${tf2class}_${team}`,
                    "particle": "tf2:item/transparent",
                }
            }, undefined, "\t")
        );
    }
}
    