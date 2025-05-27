data modify entity @s NoAI set value 1b
rotate @s facing entity @e[tag=tf2.player,limit=1] eyes
execute store result score $input_pitch tf2.var run data get entity @s Rotation[1] 10
execute store result score $input_yaw tf2.var run data get entity @s Rotation[0] 10
function tf2:math/gimbal_to_vector
function tf2:raycast/informational
kill @s