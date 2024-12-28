execute summon minecraft:marker run function tf2:__private__/anonymous/7
scoreboard players operation $input_vec3.X tf2.var = $output_vec3.X retina.__variable__
scoreboard players operation $input_vec3.Y tf2.var = $output_vec3.Y retina.__variable__
scoreboard players operation $input_vec3.Z tf2.var = $output_vec3.Z retina.__variable__
function tf2:math/vec_to_gimbal
execute store result storage tf2:summon line.yaw float 0.1 run scoreboard players get $output_yaw tf2.var
execute store result storage tf2:summon line.pitch float 0.1 run scoreboard players get $output_pitch tf2.var
execute store result score $scale_length tf2.var run data get storage retina:output Distance 2000
execute store result storage tf2:summon line.scale float 0.001 run scoreboard players get $scale_length tf2.var
function tf2:__private__/anonymous/8 with storage tf2:summon line
data remove storage tf2:summon line