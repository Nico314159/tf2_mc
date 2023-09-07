tag @s add tf2.bullet
scoreboard players set @s tf2.timer 4
data merge entity @s {item:{id:"glowstone_dust",Count:1b,tag:{CustomModelData:0}}}
execute store result score $scale_length tf2.var run data get storage retina:output Distance 2000
execute store result entity @s transformation.scale[2] float 0.001 run scoreboard players get $scale_length tf2.var
scoreboard players operation $input_vec3.X tf2.var = $output_vec3.X retina.__variable__
scoreboard players operation $input_vec3.Y tf2.var = $output_vec3.Y retina.__variable__
scoreboard players operation $input_vec3.Z tf2.var = $output_vec3.Z retina.__variable__
function tf2:math/vec_to_gimbal
execute if score $output_yaw tf2.var matches 1.. run scoreboard players operation $output_pitch tf2.var *= -1 tf2.const
execute if score $output_yaw tf2.var matches 1.. run scoreboard players add $output_pitch tf2.var 1800
execute if score $output_yaw tf2.var matches 1.. if score $output_pitch tf2.var matches 1801.. run scoreboard players remove $output_pitch tf2.var 3600
execute store result entity @s Rotation[0] float 0.1 run scoreboard players get $output_yaw tf2.var
execute store result entity @s Rotation[1] float 0.1 run scoreboard players get $output_pitch tf2.var
tp @s ^ ^ ^0.15