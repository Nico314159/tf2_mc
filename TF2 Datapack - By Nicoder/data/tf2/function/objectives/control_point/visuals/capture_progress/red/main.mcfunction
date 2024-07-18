scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
function tf2:objectives/control_point/find_index/main
scoreboard players set $frame tf2.var 0
scoreboard players operation $frame tf2.var = @s[scores={tf2.team=2}] tf2.capture_threshold
scoreboard players operation $frame tf2.var += @s tf2.red_progress
scoreboard players operation $frame tf2.var -= @s tf2.blu_progress
scoreboard players operation $frame tf2.var *= 8 tf2.const
execute if score @s tf2.team matches 0 run scoreboard players operation $frame tf2.var *= 2 tf2.const
scoreboard players operation $wheel_frame tf2.var = $frame tf2.var
scoreboard players operation $frame tf2.var /= @s tf2.capture_threshold
execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get $frame tf2.var
function tf2:__private__/switch_case/9/select with storage tf2:__storage__
execute if score @s[scores={tf2.red_progress=0}] tf2.team matches 0 run data modify storage tf2:lookup points[0].owner set value '[{"text":"[","color":"#F5EACB"},{"text":"3210=","color":"#A1A1A1"}]'
execute if score @s[scores={tf2.red_progress=0}] tf2.team matches 0 run data modify storage tf2:lookup points[0].progress set value '[{"text":"321))))))))))))))","color":"gray"}]'
execute if score @s[scores={tf2.red_progress=0}] tf2.team matches 0 run scoreboard players remove @s tf2.red_progress 1
execute if score @s[scores={tf2.red_progress=1..}] tf2.team matches 0 run function tf2:objectives/control_point/visuals/capture_progress/neutral_flicker
execute if score @s tf2.team matches 2 run function tf2:objectives/control_point/visuals/capture_progress/blu/flicker
function tf2:objectives/control_point/visuals/capture_progress/red/wheel
function tf2:objectives/control_point/find_index/reinsert