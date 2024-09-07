execute if score @p[tag=self] tf2.team matches 1 run particle minecraft:block{block_state:red_stained_glass} ~ ~-0.6 ~ 0 0 0 0 1 normal
execute if score @p[tag=self] tf2.team matches 2 run particle minecraft:block{block_state:blue_stained_glass} ~ ~-0.6 ~ 0 0 0 0 1 normal
execute positioned ^ ^ ^0.1 unless entity @s[distance=..2] run function tf2:class/medic/particlefx