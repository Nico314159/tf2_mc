scoreboard players operation $bound tf2.var = $red_on_point tf2.var
scoreboard players operation $bound tf2.var > $blu_on_point tf2.var
scoreboard players operation $bound tf2.var < 4 tf2.const
function tf2:math/harmonic_series
execute unless score @s tf2.team matches 0 run scoreboard players operation $sum tf2.var *= 2 tf2.const
execute if score $red_on_point tf2.var matches 1.. unless score @s tf2.team matches 1 run function tf2:objectives/control_point/capture_progress/red
execute if score $blu_on_point tf2.var matches 1.. unless score @s tf2.team matches 2 run function tf2:objectives/control_point/capture_progress/blu
execute if score @s tf2.team matches 2 if score @s tf2.blu_progress < @s tf2.capture_threshold run function tf2:objectives/control_point/visuals/capture_progress/red/main
execute if score @s tf2.team matches 0 if score @s tf2.blu_progress matches 0 run function tf2:objectives/control_point/visuals/capture_progress/red/main
execute if score @s tf2.team matches 1 if score @s tf2.red_progress < @s tf2.capture_threshold run function tf2:objectives/control_point/visuals/capture_progress/blu/main
execute if score @s tf2.team matches 0 if score @s tf2.red_progress matches 0 run function tf2:objectives/control_point/visuals/capture_progress/blu/main
function tf2:objectives/control_point/decay/init