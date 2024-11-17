scoreboard players set $magnitude tf2.var 0
scoreboard players operation $math_quaternion_r tf2.var = $input_quaternion_r tf2.var
scoreboard players operation $math_quaternion_r tf2.var *= $math_quaternion_r tf2.var
scoreboard players operation $magnitude tf2.var += $math_quaternion_r tf2.var
scoreboard players operation $math_quaternion_i tf2.var = $input_quaternion_i tf2.var
scoreboard players operation $math_quaternion_i tf2.var *= $math_quaternion_i tf2.var
scoreboard players operation $magnitude tf2.var += $math_quaternion_i tf2.var
scoreboard players operation $math_quaternion_j tf2.var = $input_quaternion_j tf2.var
scoreboard players operation $math_quaternion_j tf2.var *= $math_quaternion_j tf2.var
scoreboard players operation $magnitude tf2.var += $math_quaternion_j tf2.var
scoreboard players operation $math_quaternion_k tf2.var = $input_quaternion_k tf2.var
scoreboard players operation $math_quaternion_k tf2.var *= $math_quaternion_k tf2.var
scoreboard players operation $magnitude tf2.var += $math_quaternion_k tf2.var
scoreboard players operation __math__.N tf2.var = $magnitude tf2.var
function tf2:__private__/math_sqrt/main
scoreboard players operation $magnitude tf2.var = __math__.x_n tf2.var
scoreboard players operation $output_quaternion_r tf2.var = $input_quaternion_r tf2.var
scoreboard players operation $output_quaternion_r tf2.var *= 1000 tf2.const
scoreboard players operation $output_quaternion_r tf2.var /= $magnitude tf2.var
scoreboard players operation $output_quaternion_i tf2.var = $input_quaternion_i tf2.var
scoreboard players operation $output_quaternion_i tf2.var *= 1000 tf2.const
scoreboard players operation $output_quaternion_i tf2.var /= $magnitude tf2.var
scoreboard players operation $output_quaternion_j tf2.var = $input_quaternion_j tf2.var
scoreboard players operation $output_quaternion_j tf2.var *= 1000 tf2.const
scoreboard players operation $output_quaternion_j tf2.var /= $magnitude tf2.var
scoreboard players operation $output_quaternion_k tf2.var = $input_quaternion_k tf2.var
scoreboard players operation $output_quaternion_k tf2.var *= 1000 tf2.const
scoreboard players operation $output_quaternion_k tf2.var /= $magnitude tf2.var
execute if score $magnitude tf2.var matches 0 run scoreboard players set $output_quaternion_r tf2.var 1000