execute if score $mot.temp_hitbox_z tf2.var matches 0.. positioned ~ ~ ~0 run function tf2:motion/hitbox_y_x
execute if score $mot.temp_hitbox_z tf2.var matches 2.. positioned ~ ~ ~1 run function tf2:motion/hitbox_y_x
execute if score $mot.temp_hitbox_z tf2.var matches 4.. positioned ~ ~ ~2 run function tf2:motion/hitbox_y_x
scoreboard players add $mot.subblock_z tf2.var 1
execute if score $mot.temp_hitbox_z tf2.var matches 1.. positioned ~ ~ ~0.5 run function tf2:motion/hitbox_y_x
execute if score $mot.temp_hitbox_z tf2.var matches 3.. positioned ~ ~ ~1.5 run function tf2:motion/hitbox_y_x
execute if score $mot.temp_hitbox_z tf2.var matches 5.. positioned ~ ~ ~2.5 run function tf2:motion/hitbox_y_x
scoreboard players add $mot.subblock_z tf2.var 1