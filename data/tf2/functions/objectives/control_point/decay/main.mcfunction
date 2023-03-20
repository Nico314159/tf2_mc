#> tf2:objectives/control_point/decay/main
#
# @within tf2:objectives/control_point/decay/init

scoreboard players operation $sum tf2.var = @s tf2.capture_threshold
scoreboard players operation $sum tf2.var /= $20 tf2.const
scoreboard players operation $sum tf2.var /= $90 tf2.const
execute if entity @s[tag=tf2.overtime] run scoreboard players operation $sum tf2.var *= $6 tf2.const
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e[type=marker] if score $local tf2.batch_number = @s tf2.batch_number run tag @s add tf2.current

# revert in direction of owner team
execute if score @s tf2.team matches 1 run function tf2:objectives/control_point/capture_progress/red
execute if score @s tf2.team matches 2 run function tf2:objectives/control_point/capture_progress/blu

execute if score @s[tag=tf2.overtime,scores={tf2.team=1}] tf2.red_progress = @s tf2.capture_threshold as @e[tag=tf2.current,limit=1] run function tf2:timer/end_game
execute if score @s[tag=tf2.overtime,scores={tf2.team=2}] tf2.blu_progress = @s tf2.capture_threshold as @e[tag=tf2.current,limit=1] run function tf2:timer/end_game

# if unowned, revert towards zero
scoreboard players operation @s[scores={tf2.team=0}] tf2.red_progress -= $sum tf2.var
scoreboard players operation @s[scores={tf2.team=0}] tf2.blu_progress -= $sum tf2.var
scoreboard players operation @s tf2.red_progress > $0 tf2.const
scoreboard players operation @s tf2.blu_progress > $0 tf2.const