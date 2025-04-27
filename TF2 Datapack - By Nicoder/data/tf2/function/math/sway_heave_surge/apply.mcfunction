scoreboard players set $length tf2.var 0
scoreboard players operation $temp tf2.var = $input_vector_x tf2.var
scoreboard players operation $temp tf2.var *= $input_vector_x tf2.var
scoreboard players operation $length tf2.var += $temp tf2.var
scoreboard players operation $temp tf2.var = $input_vector_y tf2.var
scoreboard players operation $temp tf2.var *= $input_vector_y tf2.var
scoreboard players operation $length tf2.var += $temp tf2.var
scoreboard players operation $temp tf2.var = $input_vector_z tf2.var
scoreboard players operation $temp tf2.var *= $input_vector_z tf2.var
scoreboard players operation $length tf2.var += $temp tf2.var
scoreboard players operation __math__.N tf2.var = $length tf2.var
function tf2:__private__/math_sqrt/main
scoreboard players operation $length tf2.var = __math__.x_n tf2.var
scoreboard players operation $input_matrix_XX tf2.var = $output_matrix_XX tf2.var
scoreboard players operation $input_matrix_XY tf2.var = $output_matrix_XY tf2.var
scoreboard players operation $input_matrix_XZ tf2.var = $output_matrix_XZ tf2.var
scoreboard players operation $input_matrix_YX tf2.var = $output_matrix_YX tf2.var
scoreboard players operation $input_matrix_YY tf2.var = $output_matrix_YY tf2.var
scoreboard players operation $input_matrix_YZ tf2.var = $output_matrix_YZ tf2.var
scoreboard players operation $input_matrix_ZX tf2.var = $output_matrix_ZX tf2.var
scoreboard players operation $input_matrix_ZY tf2.var = $output_matrix_ZY tf2.var
scoreboard players operation $input_matrix_ZZ tf2.var = $output_matrix_ZZ tf2.var
function tf2:math/matrix_transform
scoreboard players operation $output_vector_x tf2.var *= 480 tf2.const
scoreboard players operation $output_vector_x tf2.var /= $length tf2.var
scoreboard players operation $output_vector_y tf2.var *= 480 tf2.const
scoreboard players operation $output_vector_y tf2.var /= $length tf2.var
scoreboard players operation $output_vector_z tf2.var *= 480 tf2.const
scoreboard players operation $output_vector_z tf2.var /= $length tf2.var
execute if score $debug_messages tf2.var matches 1.. run tellraw @a ["",{"text":"Angled Vector: "},{"text":"[","color":"gold","italic":true,"type":"text"},{"score":{"name":"$output_vector_x","objective":"tf2.var"},"italic":true,"color":"gold","type":"score"},{"text":", ","italic":true,"color":"gold"},{"score":{"name":"$output_vector_y","objective":"tf2.var"},"italic":true,"color":"gold","type":"score"},{"text":", ","italic":true,"color":"gold"},{"score":{"name":"$output_vector_z","objective":"tf2.var"},"italic":true,"color":"gold","type":"score"},{"text":"]","italic":true,"color":"gold"}]