#> tf2:objectives/control_point/visuals/wheel_spacing
#
# @within tf2:objectives/control_point/visuals/capture_progress/*/wheel
tag @e remove tf2.current
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e[type=marker,tag=tf2.control_point] if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
scoreboard players operation $wheel_spacing tf2.var > @e[type=marker,tag=tf2.current] tf2.index
scoreboard players operation $wheel_spacing tf2.var /= 2 tf2.const
scoreboard players operation $wheel_spacing tf2.var -= @s tf2.index
scoreboard players operation $wheel_spacing tf2.var /= 5 tf2.const
function tf2:__private__/switch_case/0