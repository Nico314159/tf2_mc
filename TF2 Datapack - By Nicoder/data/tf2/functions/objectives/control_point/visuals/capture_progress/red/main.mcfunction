scoreboard players operation $frame tf2.var = @s tf2.capture_threshold
scoreboard players operation $frame tf2.var += @s tf2.red_progress
scoreboard players operation $frame tf2.var -= @s tf2.blu_progress
scoreboard players operation $frame tf2.var *= $8 tf2.const
scoreboard players operation $frame tf2.var /= @s tf2.capture_threshold
execute if score $frame tf2.var matches 0..3 run function tf2:objectives/control_point/visuals/capture_progress/red/0_to_3
execute if score $frame tf2.var matches 4..7 run function tf2:objectives/control_point/visuals/capture_progress/red/4_to_7
execute if score $frame tf2.var matches 8..11 run function tf2:objectives/control_point/visuals/capture_progress/red/8_to_11
execute if score $frame tf2.var matches 12..15 run function tf2:objectives/control_point/visuals/capture_progress/red/12_to_15
