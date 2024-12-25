scoreboard players operation $mot.subblock_y tf2.var %= 2 tf2.const
execute if block ~ ~ ~ #minecraft:slabs[type=double] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_y tf2.var matches 1 if block ~ ~ ~ #minecraft:slabs[type=top] run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.subblock_y tf2.var matches 0 if block ~ ~ ~ #minecraft:slabs[type=bottom] run scoreboard players set $mot.collision tf2.var 1