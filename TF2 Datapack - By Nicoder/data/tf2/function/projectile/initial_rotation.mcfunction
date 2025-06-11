function tf2:projectile/linear_velocity_to_quaternion
scoreboard players operation $input tf2.var = $input_yaw tf2.var
function tf2:math/cosine
scoreboard players operation @s tf2.ang_vel_x = $output tf2.var
scoreboard players operation @s tf2.ang_vel_x *= $angular_speed tf2.var
scoreboard players operation @s tf2.ang_vel_x /= 1000 tf2.const
execute store result score @s tf2.ang_vel_y run random value -10..10
function tf2:math/sine
scoreboard players operation @s tf2.ang_vel_z = $output tf2.var
scoreboard players operation @s tf2.ang_vel_z *= $angular_speed tf2.var
scoreboard players operation @s tf2.ang_vel_z /= 1000 tf2.const
function tf2:math/random_vector
scoreboard players operation @s tf2.ang_vel_x *= 5 tf2.const
scoreboard players operation @s tf2.ang_vel_x /= 2 tf2.const
scoreboard players operation @s tf2.ang_vel_x += $output_vector_x tf2.var
scoreboard players operation @s tf2.ang_vel_x *= 2 tf2.const
scoreboard players operation @s tf2.ang_vel_x /= 5 tf2.const
scoreboard players operation @s tf2.ang_vel_y *= 5 tf2.const
scoreboard players operation @s tf2.ang_vel_y /= 2 tf2.const
scoreboard players operation @s tf2.ang_vel_y += $output_vector_y tf2.var
scoreboard players operation @s tf2.ang_vel_y *= 2 tf2.const
scoreboard players operation @s tf2.ang_vel_y /= 5 tf2.const
scoreboard players operation @s tf2.ang_vel_z *= 5 tf2.const
scoreboard players operation @s tf2.ang_vel_z /= 2 tf2.const
scoreboard players operation @s tf2.ang_vel_z += $output_vector_z tf2.var
scoreboard players operation @s tf2.ang_vel_z *= 2 tf2.const
scoreboard players operation @s tf2.ang_vel_z /= 5 tf2.const
execute store result score $input_ang_vel_x tf2.var run random value -10..10
scoreboard players operation $input_ang_vel_x tf2.var *= @s tf2.ang_vel_x
scoreboard players operation $input_ang_vel_x tf2.var /= 100 tf2.const
execute store result score $input_ang_vel_y tf2.var run random value -10..10
scoreboard players operation $input_ang_vel_y tf2.var *= @s tf2.ang_vel_y
scoreboard players operation $input_ang_vel_y tf2.var /= 100 tf2.const
execute store result score $input_ang_vel_z tf2.var run random value -10..10
scoreboard players operation $input_ang_vel_z tf2.var *= @s tf2.ang_vel_z
scoreboard players operation $input_ang_vel_z tf2.var /= 100 tf2.const
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