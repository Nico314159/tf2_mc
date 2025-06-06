scoreboard players operation $input tf2.var = $input_yaw tf2.var
function tf2:math/sine
scoreboard players operation $output_vector_x tf2.var = $output tf2.var
scoreboard players operation $output_vector_x tf2.var *= -1 tf2.const
function tf2:math/cosine
scoreboard players operation $output_vector_z tf2.var = $output tf2.var
scoreboard players operation $input tf2.var = $input_pitch tf2.var
function tf2:math/cosine
scoreboard players operation $output_vector_horizontal tf2.var = $output tf2.var
scoreboard players operation $output_vector_x tf2.var *= $output tf2.var
scoreboard players operation $output_vector_z tf2.var *= $output tf2.var
scoreboard players operation $output_vector_x tf2.var /= 1000 tf2.const
scoreboard players operation $output_vector_z tf2.var /= 1000 tf2.const
function tf2:math/sine
scoreboard players operation $output_vector_y tf2.var = $output tf2.var
scoreboard players operation $output_vector_y tf2.var *= -1 tf2.const