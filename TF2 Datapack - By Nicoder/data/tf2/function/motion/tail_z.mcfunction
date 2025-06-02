scoreboard players set $mot.step tf2.var 4
scoreboard players operation $mot.distance_tail_z tf2.var += $mot.delta_z tf2.var
scoreboard players remove $mot.hitbox_z tf2.var 1
execute if score $mot.sign_z tf2.var matches 1 run scoreboard players add $mot.base_z tf2.var 1000
execute if score $mot.sign_z tf2.var matches 1 positioned ~ ~ ~1 run function tf2:motion/traverse
execute if score $mot.sign_z tf2.var matches -1 run function tf2:motion/traverse