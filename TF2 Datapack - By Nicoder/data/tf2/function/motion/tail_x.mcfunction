scoreboard players set $mot.shortest_distance tf2.var -1
scoreboard players set $mot.step tf2.var 3
scoreboard players operation $mot.distance_tail_x tf2.var += $mot.delta_x tf2.var
execute if score $mot.sign_x tf2.var matches 1 run scoreboard players add $mot.subblock_x tf2.var 1
scoreboard players remove $mot.hitbox_x tf2.var 1
execute if score $mot.end tf2.var matches 0 run scoreboard players add $mot.motion_tail_x tf2.var 500
execute if score $mot.end tf2.var matches 0 if score $mot.sign_x tf2.var matches 1 positioned ~0.5 ~ ~ run function tf2:motion/traverse
execute if score $mot.end tf2.var matches 0 if score $mot.sign_x tf2.var matches -1 run function tf2:motion/traverse