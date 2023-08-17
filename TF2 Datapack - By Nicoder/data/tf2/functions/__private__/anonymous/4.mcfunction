tag @s add tf2.bullet
data merge entity @s {item:{id:"glowstone_dust",Count:1b,tag:{CustomModelData:0}}}
execute store result entity @s transformation.scale[2] float 0.001 run data get storage retina:output Distance 1000
scoreboard players operation $input_vec3.X tf2.var = $output_vec3.X retina.__variable__
scoreboard players operation $input_vec3.Y tf2.var = $output_vec3.Y retina.__variable__
scoreboard players operation $input_vec3.Z tf2.var = $output_vec3.Z retina.__variable__
function tf2:math/vec_to_gimbal
execute store result entity @s Rotation[0] float 1 run scoreboard players get $output_yaw tf2.var
execute store result entity @s Rotation[1] float 1 run scoreboard players get $output_pitch tf2.var