#> tf2:objectives/control_point/capture_progress/blu
# 
# @within
#   tf2:objectives/control_point/main
#   tf2:objectives/control_point/decay/main
# @context marker & position

# RED progress must be reverted before adding BLU progress
execute unless score @s tf2.red_progress matches 0 run scoreboard players operation @s tf2.red_progress -= $sum tf2.var
scoreboard players operation @s tf2.red_progress > $0 tf2.const
scoreboard players operation @s[scores={tf2.red_progress=0}] tf2.blu_progress += $sum tf2.var