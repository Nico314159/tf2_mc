scoreboard players operation $mot.temp_hitbox_x tf2.var = $mot.hitbox_x tf2.var
scoreboard players operation $mot.temp_hitbox_y tf2.var = $mot.hitbox_y tf2.var
scoreboard players operation $mot.temp_hitbox_z tf2.var = $mot.hitbox_z tf2.var
scoreboard players set $mot.collision tf2.var 0
execute if score $mot.step tf2.var matches 0 if score $mot.sign_x tf2.var matches -1 run function tf2:motion/hitbox_x_y
execute if score $mot.step tf2.var matches 0 if score $mot.sign_x tf2.var matches 1 run function tf2:motion/hitbox_x_x
execute if score $mot.step tf2.var matches 1 if score $mot.sign_y tf2.var matches -1 run function tf2:motion/hitbox_y_z
execute if score $mot.step tf2.var matches 1 if score $mot.sign_y tf2.var matches 1 run function tf2:motion/hitbox_y_y
execute if score $mot.step tf2.var matches 2 if score $mot.sign_z tf2.var matches -1 run function tf2:motion/hitbox_z_x
execute if score $mot.step tf2.var matches 2 if score $mot.sign_z tf2.var matches 1 run function tf2:motion/hitbox_z_z
scoreboard players set __if_else__ tf2.var 0
execute if score $mot.collision tf2.var matches 1 run function tf2:__private__/if_else/37
execute if score __if_else__ tf2.var matches 0 run function tf2:motion/traverse