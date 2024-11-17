scoreboard players operation $input tf2.var = $input_angle tf2.var
scoreboard players operation $input tf2.var %= 3600 tf2.const
scoreboard players operation $input tf2.var /= 2 tf2.const
function tf2:math/cosine
scoreboard players operation $output_quaternion_r tf2.var = $output tf2.var
function tf2:math/sine
scoreboard players operation $output_quaternion_i tf2.var = $input_axis_x tf2.var
scoreboard players operation $output_quaternion_i tf2.var *= $output tf2.var
scoreboard players operation $output_quaternion_i tf2.var /= 1000 tf2.const
scoreboard players operation $output_quaternion_j tf2.var = $input_axis_y tf2.var
scoreboard players operation $output_quaternion_j tf2.var *= $output tf2.var
scoreboard players operation $output_quaternion_j tf2.var /= 1000 tf2.const
scoreboard players operation $output_quaternion_k tf2.var = $input_axis_z tf2.var
scoreboard players operation $output_quaternion_k tf2.var *= $output tf2.var
scoreboard players operation $output_quaternion_k tf2.var /= 1000 tf2.const