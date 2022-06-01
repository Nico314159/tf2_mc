execute as @e[type=minecraft:arrow, nbt={Potion:"minecraft:harming"}] run data modify entity @s NoGravity set value 1b
execute as @e[type=minecraft:arrow, nbt={Color:9022619}] run data modify entity @s pickup set value 2b
execute as @e[type=minecraft:arrow, nbt={Color:9022619}] run data modify entity @s crit set value 0b
execute as @e[type=arrow, nbt={Color:9022619, life:0s}] run data modify entity @s life set value 500s
execute as @e[type=arrow, nbt={Color:9022619}] run data modify entity @s NoGravity set value 1b