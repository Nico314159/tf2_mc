execute if score $mot.hitbox_z tf2.var matches 0 positioned ~ ~ ~0 run function tf2:motion/hitbox_z_x
scoreboard players add $mot.voxel_z tf2.var 1000
execute if score $mot.hitbox_z tf2.var matches 1 positioned ~ ~ ~1 run function tf2:motion/hitbox_z_x
scoreboard players add $mot.voxel_z tf2.var 1000
execute if score $mot.hitbox_z tf2.var matches 2 positioned ~ ~ ~2 run function tf2:motion/hitbox_z_x
scoreboard players operation $mot.voxel_z tf2.var = $mot.base_z tf2.var