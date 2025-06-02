scoreboard players operation $mot.voxel_x tf2.var = $mot.base_x tf2.var
scoreboard players operation $mot.voxel_y tf2.var = $mot.base_y tf2.var
scoreboard players operation $mot.voxel_z tf2.var = $mot.base_z tf2.var
execute if score $mot.step tf2.var matches 0 if score $mot.sign_x tf2.var matches -1 run function tf2:motion/hitbox_x_y
execute if score $mot.step tf2.var matches 0 if score $mot.sign_x tf2.var matches 1 run function tf2:motion/hitbox_x_x
execute if score $mot.step tf2.var matches 1 if score $mot.sign_y tf2.var matches -1 run function tf2:motion/hitbox_y_z
execute if score $mot.step tf2.var matches 1 if score $mot.sign_y tf2.var matches 1 run function tf2:motion/hitbox_y_y
execute if score $mot.step tf2.var matches 2 if score $mot.sign_z tf2.var matches -1 run function tf2:motion/hitbox_z_x
execute if score $mot.step tf2.var matches 2 if score $mot.sign_z tf2.var matches 1 run function tf2:motion/hitbox_z_z
function tf2:motion/traverse