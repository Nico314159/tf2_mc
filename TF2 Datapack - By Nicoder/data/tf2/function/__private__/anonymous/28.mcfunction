function tf2:projectile/get_pos
scoreboard players operation @s tf2.mot_x = $mot.mot_x tf2.var
scoreboard players set @s tf2.hitbox_x 76
scoreboard players operation @s tf2.mot_y = $mot.mot_y tf2.var
scoreboard players set @s tf2.hitbox_y 76
scoreboard players operation @s tf2.mot_z = $mot.mot_z tf2.var
scoreboard players set @s tf2.hitbox_z 76
scoreboard players operation @s tf2.halt = $gren.sticky tf2.var
scoreboard players set @s tf2.friction 980
scoreboard players set @s tf2.collision_friction 950
execute if score $gren.sticky tf2.var matches 1 run function tf2:__private__/if_else/76
function tf2:math/random_quaternion
scoreboard players operation @s tf2.quaternion_r = $output_quaternion_r tf2.var
scoreboard players operation @s tf2.quaternion_i = $output_quaternion_i tf2.var
scoreboard players operation @s tf2.quaternion_j = $output_quaternion_j tf2.var
scoreboard players operation @s tf2.quaternion_k = $output_quaternion_k tf2.var
function tf2:math/random_vector
scoreboard players operation @s tf2.ang_vel_x = $output_vector_x tf2.var
scoreboard players operation @s tf2.ang_vel_x *= 200 tf2.const
scoreboard players operation @s tf2.ang_vel_x /= 1000 tf2.const
scoreboard players operation @s tf2.ang_vel_y = $output_vector_y tf2.var
scoreboard players operation @s tf2.ang_vel_y *= 200 tf2.const
scoreboard players operation @s tf2.ang_vel_y /= 1000 tf2.const
scoreboard players operation @s tf2.ang_vel_z = $output_vector_z tf2.var
scoreboard players operation @s tf2.ang_vel_z *= 200 tf2.const
scoreboard players operation @s tf2.ang_vel_z /= 1000 tf2.const
tag @s remove tf2.new