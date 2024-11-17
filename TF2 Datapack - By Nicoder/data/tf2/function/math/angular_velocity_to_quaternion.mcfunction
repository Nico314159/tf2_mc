scoreboard players set $magnitude tf2.var 0
scoreboard players operation $math_x tf2.var = $input_ang_vel_x tf2.var
scoreboard players operation $math_x tf2.var *= $math_x tf2.var
scoreboard players operation $magnitude tf2.var += $math_x tf2.var
scoreboard players operation $math_y tf2.var = $input_ang_vel_y tf2.var
scoreboard players operation $math_y tf2.var *= $math_y tf2.var
scoreboard players operation $magnitude tf2.var += $math_y tf2.var
scoreboard players operation $math_z tf2.var = $input_ang_vel_z tf2.var
scoreboard players operation $math_z tf2.var *= $math_z tf2.var
scoreboard players operation $magnitude tf2.var += $math_z tf2.var
scoreboard players operation __math__.N tf2.var = $magnitude tf2.var
function tf2:__private__/math_sqrt/main
scoreboard players operation $magnitude tf2.var = __math__.x_n tf2.var
scoreboard players operation $input_axis_x tf2.var = $input_ang_vel_x tf2.var
scoreboard players operation $input_axis_x tf2.var *= 1000 tf2.const
scoreboard players operation $input_axis_x tf2.var /= $magnitude tf2.var
scoreboard players operation $input_axis_y tf2.var = $input_ang_vel_y tf2.var
scoreboard players operation $input_axis_y tf2.var *= 1000 tf2.const
scoreboard players operation $input_axis_y tf2.var /= $magnitude tf2.var
scoreboard players operation $input_axis_z tf2.var = $input_ang_vel_z tf2.var
scoreboard players operation $input_axis_z tf2.var *= 1000 tf2.const
scoreboard players operation $input_axis_z tf2.var /= $magnitude tf2.var
scoreboard players operation $input_angle tf2.var = $magnitude tf2.var
scoreboard players operation $input_angle tf2.var *= 1800 tf2.const
scoreboard players operation $input_angle tf2.var /= 3141 tf2.const
function tf2:math/axis_to_quaternion