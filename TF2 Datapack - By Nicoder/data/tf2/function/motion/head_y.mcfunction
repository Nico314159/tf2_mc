scoreboard players set $mot.step tf2.var 1
scoreboard players operation $mot.distance_head_y tf2.var += $mot.delta_y tf2.var
scoreboard players add $mot.hitbox_y tf2.var 1
execute if score $mot.sign_y tf2.var matches -1 run scoreboard players remove $mot.base_y tf2.var 1000
execute if score $mot.sign_y tf2.var matches -1 positioned ~ ~-1 ~ run function tf2:motion/update_collision_distance
execute if score $mot.sign_y tf2.var matches 1 run function tf2:motion/update_collision_distance