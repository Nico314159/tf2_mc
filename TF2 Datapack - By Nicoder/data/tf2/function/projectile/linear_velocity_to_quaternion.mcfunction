scoreboard players operation $input_vec3.X tf2.var = @s tf2.mot_x
scoreboard players operation $input_vec3.Y tf2.var = @s tf2.mot_y
scoreboard players operation $input_vec3.Z tf2.var = @s tf2.mot_z
function tf2:math/vec_to_gimbal
scoreboard players set $input_axis_x tf2.var 1000
scoreboard players set $input_axis_y tf2.var 0
scoreboard players set $input_axis_z tf2.var 0
scoreboard players operation $input_angle tf2.var = $output_pitch tf2.var
scoreboard players operation $input_angle tf2.var /= 10 tf2.const
function tf2:math/quaternion_from_axis
scoreboard players operation $input_quaternion_2_r tf2.var = $output_quaternion_r tf2.var
scoreboard players operation $input_quaternion_2_i tf2.var = $output_quaternion_i tf2.var
scoreboard players operation $input_quaternion_2_j tf2.var = $output_quaternion_j tf2.var
scoreboard players operation $input_quaternion_2_k tf2.var = $output_quaternion_k tf2.var
scoreboard players set $input_vector_x tf2.var 0
scoreboard players set $input_vector_y tf2.var -1000
scoreboard players set $input_vector_z tf2.var 0
scoreboard players operation $input_angle tf2.var = $output_yaw tf2.var
scoreboard players operation $input_angle tf2.var /= 10 tf2.const
function tf2:math/quaternion_from_axis
scoreboard players operation $input_quaternion_1_r tf2.var = $output_quaternion_r tf2.var
scoreboard players operation $input_quaternion_1_i tf2.var = $output_quaternion_i tf2.var
scoreboard players operation $input_quaternion_1_j tf2.var = $output_quaternion_j tf2.var
scoreboard players operation $input_quaternion_1_k tf2.var = $output_quaternion_k tf2.var
function tf2:math/multiply_quaternions
scoreboard players operation $input_quaternion_r tf2.var = $output_quaternion_r tf2.var
scoreboard players operation $input_quaternion_i tf2.var = $output_quaternion_i tf2.var
scoreboard players operation $input_quaternion_j tf2.var = $output_quaternion_j tf2.var
scoreboard players operation $input_quaternion_k tf2.var = $output_quaternion_k tf2.var
function tf2:math/normalize_quaternion
function tf2:projectile/save_output_rotation_to_entity