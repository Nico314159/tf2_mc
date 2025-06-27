scoreboard players operation $input_vec3.X tf2.var = @s tf2.mot_x
scoreboard players operation $input_vec3.Y tf2.var = @s tf2.mot_y
scoreboard players operation $input_vec3.Z tf2.var = @s tf2.mot_z
function tf2:math/vec_to_gimbal
scoreboard players operation $input_pitch tf2.var = $output_pitch tf2.var
scoreboard players operation $input_yaw tf2.var = $output_yaw tf2.var
function tf2:math/gimbal_to_quaternion
function tf2:projectile/save_output_rotation_to_entity
function tf2:projectile/rotate_passenger