scoreboard players operation $input_X tf2.var = $input_vec3.X tf2.var
scoreboard players operation $input_Y tf2.var = $input_vec3.Y tf2.var
scoreboard players operation $input_Y tf2.var *= -1 tf2.const
function tf2:math/arctangent
scoreboard players operation $output_pitch tf2.var = $output tf2.var
scoreboard players operation $input_X tf2.var = $input_vec3.Z tf2.var
scoreboard players operation $input_Y tf2.var = $input_vec3.X tf2.var
scoreboard players operation $input_Y tf2.var *= -1 tf2.const
function tf2:math/arctangent
scoreboard players operation $output_yaw tf2.var = $output tf2.var