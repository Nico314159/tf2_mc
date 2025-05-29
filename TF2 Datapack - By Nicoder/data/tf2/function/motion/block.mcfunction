execute if score $mot.collision tf2.var matches 0 unless block ~ ~ ~ minecraft:air run data modify storage iris:settings MaxRecursionDepth set value 2
execute if score $mot.collision tf2.var matches 0 unless block ~ ~ ~ minecraft:air at @s positioned ^ ^ ^-0.1 run function iris:get_target
execute if score $mot.collision tf2.var matches 0 unless block ~ ~ ~ minecraft:air if data storage iris:output {TargetType:"BLOCK"} run scoreboard players set $mot.collision tf2.var 1
execute if score $mot.collision tf2.var matches 1 run function tf2:__private__/if_else/47