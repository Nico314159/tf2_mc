execute store result score $angular_drag tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.projectile.rotation.drag 1000
execute store result score $angular_collision_friction tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.projectile.rotation.collision_friction 1000
scoreboard players set $sign_x tf2.var 1
execute if score @s tf2.ang_vel_x matches ..-1 run scoreboard players set $sign_x tf2.var -1
scoreboard players operation @s tf2.ang_vel_x *= $sign_x tf2.var
scoreboard players operation @s tf2.ang_vel_x *= $angular_drag tf2.var
scoreboard players operation @s tf2.ang_vel_x /= 1000 tf2.const
execute if score @s tf2.collision matches 1 run scoreboard players operation @s tf2.ang_vel_x *= $angular_collision_friction tf2.var
execute if score @s tf2.collision matches 1 run scoreboard players operation @s tf2.ang_vel_x /= 1000 tf2.const
scoreboard players operation @s tf2.ang_vel_x *= $sign_x tf2.var
scoreboard players set $sign_y tf2.var 1
execute if score @s tf2.ang_vel_y matches ..-1 run scoreboard players set $sign_y tf2.var -1
scoreboard players operation @s tf2.ang_vel_y *= $sign_y tf2.var
scoreboard players operation @s tf2.ang_vel_y *= $angular_drag tf2.var
scoreboard players operation @s tf2.ang_vel_y /= 1000 tf2.const
execute if score @s tf2.collision matches 1 run scoreboard players operation @s tf2.ang_vel_y *= $angular_collision_friction tf2.var
execute if score @s tf2.collision matches 1 run scoreboard players operation @s tf2.ang_vel_y /= 1000 tf2.const
scoreboard players operation @s tf2.ang_vel_y *= $sign_y tf2.var
scoreboard players set $sign_z tf2.var 1
execute if score @s tf2.ang_vel_z matches ..-1 run scoreboard players set $sign_z tf2.var -1
scoreboard players operation @s tf2.ang_vel_z *= $sign_z tf2.var
scoreboard players operation @s tf2.ang_vel_z *= $angular_drag tf2.var
scoreboard players operation @s tf2.ang_vel_z /= 1000 tf2.const
execute if score @s tf2.collision matches 1 run scoreboard players operation @s tf2.ang_vel_z *= $angular_collision_friction tf2.var
execute if score @s tf2.collision matches 1 run scoreboard players operation @s tf2.ang_vel_z /= 1000 tf2.const
scoreboard players operation @s tf2.ang_vel_z *= $sign_z tf2.var
execute unless score @s tf2.collision_x matches 0 run function tf2:__private__/if_else/25
execute unless score @s tf2.collision_y matches 0 run function tf2:__private__/if_else/26
execute unless score @s tf2.collision_z matches 0 run function tf2:__private__/if_else/27
scoreboard players operation $input_ang_vel_x tf2.var = @s tf2.ang_vel_x
scoreboard players operation $input_ang_vel_y tf2.var = @s tf2.ang_vel_y
scoreboard players operation $input_ang_vel_z tf2.var = @s tf2.ang_vel_z
function tf2:math/angular_velocity_to_quaternion
scoreboard players operation $input_quaternion_1_r tf2.var = $output_quaternion_r tf2.var
scoreboard players operation $input_quaternion_2_r tf2.var = @s tf2.quaternion_r
scoreboard players operation $input_quaternion_1_i tf2.var = $output_quaternion_i tf2.var
scoreboard players operation $input_quaternion_2_i tf2.var = @s tf2.quaternion_i
scoreboard players operation $input_quaternion_1_j tf2.var = $output_quaternion_j tf2.var
scoreboard players operation $input_quaternion_2_j tf2.var = @s tf2.quaternion_j
scoreboard players operation $input_quaternion_1_k tf2.var = $output_quaternion_k tf2.var
scoreboard players operation $input_quaternion_2_k tf2.var = @s tf2.quaternion_k
function tf2:math/multiply_quaternions
scoreboard players operation $input_quaternion_r tf2.var = $output_quaternion_r tf2.var
scoreboard players operation $input_quaternion_i tf2.var = $output_quaternion_i tf2.var
scoreboard players operation $input_quaternion_j tf2.var = $output_quaternion_j tf2.var
scoreboard players operation $input_quaternion_k tf2.var = $output_quaternion_k tf2.var
function tf2:math/normalize_quaternion
function tf2:projectile/save_output_rotation_to_entity