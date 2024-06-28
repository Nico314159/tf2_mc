scoreboard players operation $current tf2.team = @s tf2.team
execute as @a if score @s tf2.team = $current tf2.team run tag @s add teammate
execute if score @s tf2.team matches 1 run particle minecraft:block{block_state:red_terracotta} ~ ~ ~ 0.05 0.00 0.05 0 5 normal @a[tag=teammate,distance=0.01..]
execute if score @s tf2.team matches 1 run particle minecraft:falling_dust{block_state:red_stained_glass} ~ ~ ~ 0.2 0.00 0.2 0 5 normal @a[tag=teammate,distance=0.01..]
execute if score @s tf2.team matches 2 run particle minecraft:block{block_state:light_blue_concrete} ~ ~ ~ 0.05 0.00 0.05 0 5 normal @a[tag=teammate,distance=0.01..]
execute if score @s tf2.team matches 2 run particle minecraft:falling_dust{block_state:blue_stained_glass} ~ ~ ~ 0.2 0.00 0.2 0 5 normal @a[tag=teammate,distance=0.01..]
tag @a remove teammate