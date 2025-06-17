data modify entity @s NoAI set value 1b
rotate @s facing entity @e[tag=tf2.self,limit=1] feet
execute store result score $input_pitch tf2.var run data get entity @s Rotation[1] 10
execute store result score $input_yaw tf2.var run data get entity @s Rotation[0] 10
function tf2:math/gimbal_to_vector
execute store result storage tf2:raycast direction.X float 0.001 run scoreboard players get $output_vector_x tf2.var
execute store result storage tf2:raycast direction.Y float 0.001 run scoreboard players get $output_vector_y tf2.var
execute store result storage tf2:raycast direction.Z float 0.001 run scoreboard players get $output_vector_z tf2.var
function tf2:raycast/informational
kill @s