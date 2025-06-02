execute if score $mot.hitbox_y tf2.var matches 0.. positioned ~ ~0 ~ run function tf2:motion/get_distance_to_geometry
scoreboard players add $mot.voxel_y tf2.var 1000
execute if score $mot.hitbox_y tf2.var matches 1.. positioned ~ ~1 ~ run function tf2:motion/get_distance_to_geometry
scoreboard players add $mot.voxel_y tf2.var 1000
execute if score $mot.hitbox_y tf2.var matches 2.. positioned ~ ~2 ~ run function tf2:motion/get_distance_to_geometry
scoreboard players operation $mot.voxel_y tf2.var = $mot.base_y tf2.var