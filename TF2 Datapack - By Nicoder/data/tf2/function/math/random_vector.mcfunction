execute store result score $input tf2.var run random value 0..3599
function tf2:math/cosine
scoreboard players operation $output_vector_x tf2.var = $output tf2.var
function tf2:math/sine
scoreboard players operation $output_vector_y tf2.var = $output tf2.var
execute store result score $output_vector_z tf2.var run random value -1000..1000
scoreboard players operation $math_inverse_z tf2.var = $output_vector_z tf2.var
scoreboard players operation $math_inverse_z tf2.var *= $math_inverse_z tf2.var
scoreboard players operation $math_inverse_z tf2.var *= -1 tf2.const
scoreboard players add $math_inverse_z tf2.var 1000000
scoreboard players operation __math__.N tf2.var = $math_inverse_z tf2.var
function tf2:__private__/math_sqrt/main
scoreboard players operation $math_inverse_z tf2.var = __math__.x_n tf2.var
scoreboard players operation $output_vector_x tf2.var *= $math_inverse_z tf2.var
scoreboard players operation $output_vector_y tf2.var *= $math_inverse_z tf2.var
scoreboard players operation $output_vector_x tf2.var /= 1000 tf2.const
scoreboard players operation $output_vector_y tf2.var /= 1000 tf2.const
scoreboard players operation $math_vector_x tf2.var = $output_vector_x tf2.var
scoreboard players operation $math_vector_y tf2.var = $output_vector_y tf2.var
scoreboard players operation $math_vector_z tf2.var = $output_vector_z tf2.var
scoreboard players operation $math_vector_x tf2.var *= $output_vector_x tf2.var
scoreboard players operation $math_vector_y tf2.var *= $output_vector_y tf2.var
scoreboard players operation $math_vector_z tf2.var *= $output_vector_z tf2.var
scoreboard players operation $magnitude tf2.var = $math_vector_x tf2.var
scoreboard players operation $magnitude tf2.var += $math_vector_y tf2.var
scoreboard players operation $magnitude tf2.var += $math_vector_z tf2.var