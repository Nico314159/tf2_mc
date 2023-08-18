tag @s add tf2.bullet
data merge entity @s {item:{id:"glowstone_dust",Count:1b,tag:{CustomModelData:0}}}
execute store result score $temp_Y tf2.var run data get entity @s Pos[1] 480
scoreboard players operation $temp_Y tf2.var += $offset_Y retina.__variable__
execute store result entity @s Pos[1] double 0.002083333333333 run scoreboard players get $temp_Y tf2.var
execute store result entity @s transformation.scale[2] float 0.001 run data get storage retina:output Distance 2000
scoreboard players operation $input_vec3.X tf2.var = $output_vec3.X retina.__variable__
scoreboard players operation $input_vec3.Y tf2.var = $output_vec3.Y retina.__variable__
scoreboard players operation $input_vec3.Z tf2.var = $output_vec3.Z retina.__variable__
function tf2:math/vec_to_gimbal
execute if score $output_yaw tf2.var matches 1.. run scoreboard players operation $output_pitch tf2.var *= -1 tf2.const
execute if score $output_yaw tf2.var matches 1.. run scoreboard players add $output_pitch tf2.var 1800
execute if score $output_yaw tf2.var matches 1.. if score $output_pitch tf2.var matches 1801.. run scoreboard players remove $output_pitch tf2.var 3600
execute store result entity @s Rotation[0] float 0.1 run scoreboard players get $output_yaw tf2.var
execute store result entity @s Rotation[1] float 0.1 run scoreboard players get $output_pitch tf2.var