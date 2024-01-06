type Sound = {
    "name": string,
    "pitch": number,
    "volume": number
}

let output: Record<string, Record<string, string | [Sound]>> = {}

for (const i of ["hit", "received"]) {
    for (let j = 1; j <= 5; j++) {
        output[`ding.crit_${i}${j}`] = {
            "sounds": [
                {
                    "name": `tf2:ding/crit_${i}${j}`,
                    "pitch": 0.9,
                    "volume": 0.29
                }
            ],
            "subtitle": `Critical ${i}`
        }
    }
}

console.log(JSON.stringify(output, undefined, 4));