scoreboard players set $mot.step tf2.var 0
scoreboard players operation $mot.distance_head_x tf2.var += $mot.delta_x tf2.var
scoreboard players add $mot.hitbox_x tf2.var 1
execute if score $mot.sign_x tf2.var matches -1 run scoreboard players remove $mot.base_x tf2.var 1000
execute if score $mot.sign_x tf2.var matches -1 positioned ~-1 ~ ~ run function tf2:motion/update_collision_distance
execute if score $mot.sign_x tf2.var matches 1 run function tf2:motion/update_collision_distance