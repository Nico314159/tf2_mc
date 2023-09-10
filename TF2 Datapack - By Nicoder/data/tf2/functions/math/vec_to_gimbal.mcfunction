scoreboard players operation $input_X tf2.var = $input_vec3.Z tf2.var
scoreboard players operation $input_Y tf2.var = $input_vec3.X tf2.var
scoreboard players operation $input_Y tf2.var *= -1 tf2.const
function tf2:math/arctangent
scoreboard players operation $output_yaw tf2.gimbal = $output tf2.var
scoreboard players operation $temp_vec2.X tf2.var = $input_vec3.X tf2.var
scoreboard players operation $temp_vec2.X tf2.var *= $temp_vec2.X tf2.var
scoreboard players operation $temp_vec2.Y tf2.var = $input_vec3.Z tf2.var
scoreboard players operation $temp_vec2.Y tf2.var *= $temp_vec2.Y tf2.var
scoreboard players operation $radicand tf2.var = $temp_vec2.X tf2.var
scoreboard players operation $radicand tf2.var += $temp_vec2.Y tf2.var
scoreboard players operation __math__.N tf2.var = $radicand tf2.var
function tf2:__private__/math_sqrt/main
scoreboard players operation $length tf2.var = __math__.x_n tf2.var
scoreboard players operation $input_X tf2.var = $length tf2.var
scoreboard players operation $input_Y tf2.var = $input_vec3.Y tf2.var
scoreboard players operation $input_Y tf2.var *= -1 tf2.const
function tf2:math/arctangent
scoreboard players operation $output_pitch tf2.gimbal = $output tf2.var