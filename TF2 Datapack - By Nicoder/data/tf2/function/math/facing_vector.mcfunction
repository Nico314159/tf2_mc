execute store result score $input_pitch tf2.var run data get entity @s Rotation[1] 10
execute store result score $input_yaw tf2.var run data get entity @s Rotation[0] 10
function tf2:math/gimbal_to_vector