scoreboard players operation $math_quaternion_r tf2.var = $input_quaternion_1_r tf2.var
scoreboard players operation $math_quaternion_r tf2.var *= $input_quaternion_2_r tf2.var
scoreboard players operation $math_quaternion_i tf2.var = $input_quaternion_1_i tf2.var
scoreboard players operation $math_quaternion_i tf2.var *= $input_quaternion_2_i tf2.var
scoreboard players operation $math_quaternion_j tf2.var = $input_quaternion_1_j tf2.var
scoreboard players operation $math_quaternion_j tf2.var *= $input_quaternion_2_j tf2.var
scoreboard players operation $math_quaternion_k tf2.var = $input_quaternion_1_k tf2.var
scoreboard players operation $math_quaternion_k tf2.var *= $input_quaternion_2_k tf2.var
scoreboard players operation $dot_product tf2.var = $math_quaternion_r tf2.var
scoreboard players operation $dot_product tf2.var += $math_quaternion_i tf2.var
scoreboard players operation $dot_product tf2.var += $math_quaternion_j tf2.var
scoreboard players operation $dot_product tf2.var += $math_quaternion_k tf2.var
scoreboard players operation $dot_product tf2.var /= 1000 tf2.const