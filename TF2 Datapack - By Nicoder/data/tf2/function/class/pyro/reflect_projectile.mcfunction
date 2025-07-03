execute store success score $is_stickybomb tf2.var if data entity @s item.components.minecraft:custom_data.projectile.explode_alt_fire
execute if score $is_stickybomb tf2.var matches 1.. if entity @s[tag=tf2.stuck] run return run execute positioned as @n[tag=origin] run function tf2:class/demoman/unstick_stickybomb
execute unless score $is_stickybomb tf2.var matches 1.. run function tf2:class/pyro/change_projectile_team
scoreboard players set $motion_length tf2.var 0
scoreboard players operation $temp tf2.var = @s tf2.mot_x
scoreboard players operation $temp tf2.var *= $temp tf2.var
scoreboard players operation $motion_length tf2.var += $temp tf2.var
scoreboard players operation $temp tf2.var = @s tf2.mot_y
scoreboard players operation $temp tf2.var *= $temp tf2.var
scoreboard players operation $motion_length tf2.var += $temp tf2.var
scoreboard players operation $temp tf2.var = @s tf2.mot_z
scoreboard players operation $temp tf2.var *= $temp tf2.var
scoreboard players operation $motion_length tf2.var += $temp tf2.var
execute as @p[tag=origin] run function tf2:math/facing_vector
scoreboard players set $facing_length tf2.var 0
scoreboard players operation $temp tf2.var = $output_vector_x tf2.var
scoreboard players operation $temp tf2.var *= $temp tf2.var
scoreboard players operation $facing_length tf2.var += $temp tf2.var
scoreboard players operation $temp tf2.var = $output_vector_y tf2.var
scoreboard players operation $temp tf2.var *= $temp tf2.var
scoreboard players operation $facing_length tf2.var += $temp tf2.var
scoreboard players operation $temp tf2.var = $output_vector_z tf2.var
scoreboard players operation $temp tf2.var *= $temp tf2.var
scoreboard players operation $facing_length tf2.var += $temp tf2.var
scoreboard players operation $output_vector_x tf2.var *= $motion_length tf2.var
scoreboard players operation $output_vector_x tf2.var /= $facing_length tf2.var
scoreboard players operation @s tf2.mot_x = $output_vector_x tf2.var
scoreboard players operation $output_vector_y tf2.var *= $motion_length tf2.var
scoreboard players operation $output_vector_y tf2.var /= $facing_length tf2.var
scoreboard players operation @s tf2.mot_y = $output_vector_y tf2.var
scoreboard players operation $output_vector_z tf2.var *= $motion_length tf2.var
scoreboard players operation $output_vector_z tf2.var /= $facing_length tf2.var
scoreboard players operation @s tf2.mot_z = $output_vector_z tf2.var
function tf2:projectile/linear_velocity_to_quaternion