scoreboard players operation $input tf2.var = $input_pitch tf2.var
function tf2:math/sine
scoreboard players operation $sin_X tf2.var = $output tf2.var
function tf2:math/cosine
scoreboard players operation $cos_X tf2.var = $output tf2.var
scoreboard players operation $input tf2.var = $input_yaw tf2.var
function tf2:math/sine
scoreboard players operation $sin_Y tf2.var = $output tf2.var
function tf2:math/cosine
scoreboard players operation $cos_Y tf2.var = $output tf2.var
scoreboard players operation $output_matrix_XX tf2.var = $cos_Y tf2.var
scoreboard players set $output_matrix_XY tf2.var 0
scoreboard players operation $output_matrix_XZ tf2.var = $sin_Y tf2.var
scoreboard players set $output_matrix_YX tf2.var -1
scoreboard players operation $output_matrix_YX tf2.var *= $sin_Y tf2.var
scoreboard players operation $output_matrix_YX tf2.var *= $sin_X tf2.var
scoreboard players operation $output_matrix_YX tf2.var /= 1000 tf2.const
scoreboard players operation $output_matrix_YY tf2.var = $cos_X tf2.var
scoreboard players operation $output_matrix_YZ tf2.var = $cos_Y tf2.var
scoreboard players operation $output_matrix_YZ tf2.var *= $sin_X tf2.var
scoreboard players operation $output_matrix_YZ tf2.var /= 1000 tf2.const
scoreboard players set $output_matrix_ZX tf2.var -1
scoreboard players operation $output_matrix_ZX tf2.var *= $sin_Y tf2.var
scoreboard players operation $output_matrix_ZX tf2.var *= $cos_X tf2.var
scoreboard players operation $output_matrix_ZX tf2.var /= 1000 tf2.const
scoreboard players set $output_matrix_ZY tf2.var -1
scoreboard players operation $output_matrix_ZY tf2.var *= $sin_X tf2.var
scoreboard players operation $output_matrix_ZZ tf2.var = $cos_Y tf2.var
scoreboard players operation $output_matrix_ZZ tf2.var *= $cos_X tf2.var
scoreboard players operation $output_matrix_ZZ tf2.var /= 1000 tf2.const