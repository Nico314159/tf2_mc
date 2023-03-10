#> tf2:objectives/control_point/capture_progress/red
# 
# @within
#   tf2:objectives/control_point/main
#   tf2:objectives/control_point/decay/main
# @context marker & position

# BLU progress must be reverted before adding RED progress
execute unless score @s tf2.blu_progress matches 0 run scoreboard players operation @s tf2.blu_progress -= $output tf2.var
scoreboard players operation @s tf2.blu_progress > $0 tf2.const
execute if score @s tf2.blu_progress matches 0 run scoreboard players operation @s tf2.red_progress += $output tf2.var