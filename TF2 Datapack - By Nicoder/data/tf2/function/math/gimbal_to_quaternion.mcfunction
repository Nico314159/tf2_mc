scoreboard players set $input_axis_x tf2.var 1000
scoreboard players set $input_axis_y tf2.var 0
scoreboard players set $input_axis_z tf2.var 0
scoreboard players operation $input_angle tf2.var = $input_pitch tf2.var
scoreboard players operation $input_angle tf2.var /= 10 tf2.const
function tf2:math/axis_to_quaternion
scoreboard players operation $input_quaternion_2_r tf2.var = $output_quaternion_r tf2.var
scoreboard players operation $input_quaternion_2_i tf2.var = $output_quaternion_i tf2.var
scoreboard players operation $input_quaternion_2_j tf2.var = $output_quaternion_j tf2.var
scoreboard players operation $input_quaternion_2_k tf2.var = $output_quaternion_k tf2.var
scoreboard players set $input_axis_x tf2.var 0
scoreboard players set $input_axis_y tf2.var -1000
scoreboard players set $input_axis_z tf2.var 0
scoreboard players operation $input_angle tf2.var = $input_yaw tf2.var
scoreboard players operation $input_angle tf2.var /= 10 tf2.const
function tf2:math/axis_to_quaternion
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