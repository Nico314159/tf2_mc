execute if score $mot.hitbox_x tf2.var matches 0 positioned ~0 ~ ~ run function tf2:motion/hitbox_x_y
scoreboard players add $mot.voxel_x tf2.var 1000
execute if score $mot.hitbox_x tf2.var matches 1 positioned ~1 ~ ~ run function tf2:motion/hitbox_x_y
scoreboard players add $mot.voxel_x tf2.var 1000
execute if score $mot.hitbox_x tf2.var matches 2 positioned ~2 ~ ~ run function tf2:motion/hitbox_x_y
scoreboard players operation $mot.voxel_x tf2.var = $mot.base_x tf2.var