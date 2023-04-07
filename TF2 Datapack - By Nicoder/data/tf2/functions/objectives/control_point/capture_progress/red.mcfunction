#> tf2:objectives/control_point/capture_progress/red
# 
# @within
#   tf2:objectives/control_point/main
#   tf2:objectives/control_point/decay/main
# @context marker & position

# BLU progress must be reverted before adding RED progress
execute unless score @s tf2.blu_progress matches 0 run scoreboard players operation @s tf2.blu_progress -= $sum tf2.var
scoreboard players operation @s tf2.blu_progress > $0 tf2.const
scoreboard players operation @s[scores={tf2.blu_progress=0}] tf2.red_progress += $sum tf2.var
scoreboard players operation @s tf2.red_progress < @s tf2.capture_threshold