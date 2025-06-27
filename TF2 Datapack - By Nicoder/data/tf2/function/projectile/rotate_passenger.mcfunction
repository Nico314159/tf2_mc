scoreboard players operation $input_vec3.X tf2.var = @s tf2.mot_x
scoreboard players operation $input_vec3.Y tf2.var = @s tf2.mot_y
scoreboard players operation $input_vec3.Z tf2.var = @s tf2.mot_z
function tf2:math/vec_to_gimbal
execute on passengers store result entity @s Rotation[0] float 0.01 run scoreboard players get $output_yaw tf2.var
execute on passengers store result entity @s Rotation[1] float 0.01 run scoreboard players get $output_pitch tf2.var