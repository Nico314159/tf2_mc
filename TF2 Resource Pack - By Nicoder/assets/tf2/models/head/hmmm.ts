for (const tf2class of ["scout", "sniper", "soldier", "spy", "heavy"]) {
    Deno.mkdirSync(`/Users/nicolinowill/Documents/GitHub/tf2_mc/TF2 Resource Pack - By Nicoder/assets/tf2/textures/head/${tf2class}`, {recursive: true})
    for (const team of ["red", "blu"]) {

        Deno.writeTextFileSync(
            `/Users/nicolinowill/Documents/GitHub/tf2_mc/TF2 Resource Pack - By Nicoder/assets/tf2/models/head/${tf2class}_${team}.json`,
            JSON.stringify({
                credit: "Made with Blockbench",
                parent: "tf2:head/_default_",
                textures: {
                    0: `tf2:head/${tf2class}_${team}`
                }
            }, undefined, "\t")
        );
    }
}
    