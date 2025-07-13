tag @s add tf2.self
execute summon marker run function tf2:__private__/anonymous/0
tag @s remove tf2.self
scoreboard players operation @s tf2.mot_x = @s tf2.collision_x
scoreboard players operation @s tf2.mot_x *= -100 tf2.const
scoreboard players operation @s tf2.mot_x += $output_vector_x tf2.var
scoreboard players operation @s tf2.mot_y = @s tf2.collision_y
scoreboard players operation @s tf2.mot_y *= -100 tf2.const
scoreboard players operation @s tf2.mot_y += $output_vector_y tf2.var
scoreboard players operation @s tf2.mot_z = @s tf2.collision_z
scoreboard players operation @s tf2.mot_z *= -100 tf2.const
scoreboard players operation @s tf2.mot_z += $output_vector_z tf2.var
tag @s remove tf2.stuck