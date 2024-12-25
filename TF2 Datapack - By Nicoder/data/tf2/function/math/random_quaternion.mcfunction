function tf2:math/random_vector
scoreboard players operation $output_quaternion_i tf2.var = $output_vector_x tf2.var
scoreboard players operation $output_quaternion_j tf2.var = $output_vector_y tf2.var
scoreboard players operation $output_quaternion_k tf2.var = $output_vector_z tf2.var
execute store result score $input tf2.var run random value 0..3599
function tf2:math/cosine
scoreboard players operation $output_quaternion_r tf2.var = $output tf2.var
function tf2:math/sine
scoreboard players operation $magnitude tf2.var = $output tf2.var
scoreboard players operation $output_quaternion_i tf2.var *= $magnitude tf2.var
scoreboard players operation $output_quaternion_j tf2.var *= $magnitude tf2.var
scoreboard players operation $output_quaternion_k tf2.var *= $magnitude tf2.var
scoreboard players operation $output_quaternion_i tf2.var /= 1000 tf2.const
scoreboard players operation $output_quaternion_j tf2.var /= 1000 tf2.const
scoreboard players operation $output_quaternion_k tf2.var /= 1000 tf2.const