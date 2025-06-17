scoreboard players set $sign_x tf2.var 1
execute if score @s tf2.ang_vel_x matches ..-1 run scoreboard players set $sign_x tf2.var -1
scoreboard players operation @s tf2.ang_vel_x *= $sign_x tf2.var
scoreboard players operation @s tf2.ang_vel_x *= 999 tf2.const
scoreboard players operation @s tf2.ang_vel_x /= 1000 tf2.const
execute if score @s tf2.collision matches 1 run function tf2:__private__/if_else/73
scoreboard players operation @s tf2.ang_vel_x *= $sign_x tf2.var
scoreboard players set $sign_y tf2.var 1
execute if score @s tf2.ang_vel_y matches ..-1 run scoreboard players set $sign_y tf2.var -1
scoreboard players operation @s tf2.ang_vel_y *= $sign_y tf2.var
scoreboard players operation @s tf2.ang_vel_y *= 999 tf2.const
scoreboard players operation @s tf2.ang_vel_y /= 1000 tf2.const
execute if score @s tf2.collision matches 1 run function tf2:__private__/if_else/74
scoreboard players operation @s tf2.ang_vel_y *= $sign_y tf2.var
scoreboard players set $sign_z tf2.var 1
execute if score @s tf2.ang_vel_z matches ..-1 run scoreboard players set $sign_z tf2.var -1
scoreboard players operation @s tf2.ang_vel_z *= $sign_z tf2.var
scoreboard players operation @s tf2.ang_vel_z *= 999 tf2.const
scoreboard players operation @s tf2.ang_vel_z /= 1000 tf2.const
execute if score @s tf2.collision matches 1 run function tf2:__private__/if_else/75
scoreboard players operation @s tf2.ang_vel_z *= $sign_z tf2.var
execute unless score @s tf2.collision_x matches 0 run function tf2:__private__/if_else/76
execute unless score @s tf2.collision_y matches 0 run function tf2:__private__/if_else/77
execute unless score @s tf2.collision_z matches 0 run function tf2:__private__/if_else/78
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
scoreboard players operation @s tf2.quaternion_r = $output_quaternion_r tf2.var
scoreboard players operation @s tf2.quaternion_i = $output_quaternion_i tf2.var
scoreboard players operation @s tf2.quaternion_j = $output_quaternion_j tf2.var
scoreboard players operation @s tf2.quaternion_k = $output_quaternion_k tf2.var
data modify storage tf2:gren rotation set value [0.0f,0.0f,0.0f,1.0f]
execute store result storage tf2:gren rotation[3] float 0.001 run scoreboard players get @s tf2.quaternion_r
execute store result storage tf2:gren rotation[0] float 0.001 run scoreboard players get @s tf2.quaternion_i
execute store result storage tf2:gren rotation[1] float 0.001 run scoreboard players get @s tf2.quaternion_j
execute store result storage tf2:gren rotation[2] float 0.001 run scoreboard players get @s tf2.quaternion_k
data modify entity @s transformation.right_rotation set from storage tf2:gren rotation