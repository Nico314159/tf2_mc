tag @a remove usingWinger
tag @a[nbt={Inventory:[{tag:{Enchantments:[{id:"minecraft:piercing",lvl:5s}]}}]}] add usingWinger

execute as @a[tag=cantAttack, tag=!usingWinger, nbt=!{ActiveEffects:[{Id:18b, Amplifier:10b}]}] run give @s minecraft:arrow 48
execute as @a[tag=cantAttack, tag=!usingWinger, nbt=!{ActiveEffects:[{Id:18b, Amplifier:10b}]}] run tag @s remove cantAttack