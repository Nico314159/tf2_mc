data modify entity @s NoAI set value 1b
rotate @s facing entity @n[tag=tf2.self] feet
tag @e remove iris.executing
data remove storage iris:settings Callback
execute at @s positioned ^ ^ ^ facing entity @n[tag=tf2.self] feet run function iris:get_target
execute store result score $input_pitch tf2.var run data get entity @s Rotation[1] 10
execute store result score $input_yaw tf2.var run data get entity @s Rotation[0] 10
function tf2:math/gimbal_to_vector
kill @s