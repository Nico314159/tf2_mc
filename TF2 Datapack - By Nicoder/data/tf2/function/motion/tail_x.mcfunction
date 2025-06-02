scoreboard players set $mot.step tf2.var 2
scoreboard players operation $mot.distance_tail_x tf2.var += $mot.delta_x tf2.var
scoreboard players remove $mot.hitbox_x tf2.var 1
execute if score $mot.sign_x tf2.var matches 1 run scoreboard players add $mot.base_x tf2.var 1000
execute if score $mot.sign_x tf2.var matches 1 positioned ~1 ~ ~ run function tf2:motion/traverse
execute if score $mot.sign_x tf2.var matches -1 run function tf2:motion/traverse