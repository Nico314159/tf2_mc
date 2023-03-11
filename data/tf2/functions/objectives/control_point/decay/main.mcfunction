#> tf2:objectives/control_point/decay/main
#
# @within tf2:objectives/control_point/decay/init

scoreboard players operation $decay tf2.var = @s tf2.capture_threshold
scoreboard players operation $decay tf2.var /= $20 tf2.const
scoreboard players operation $decay tf2.var /= $90 tf2.const
execute as @s[tag=tf2.overtime] run scoreboard players operation $decay tf2.var *= $6 tf2.const
scoreboard players operation $output tf2.var = $decay tf2.var

# revert in direction of owner team
execute if score @s tf2.team matches 1 run function tf2:objectives/control_point/capture_progress/red
execute if score @s tf2.team matches 2 run function tf2:objectives/control_point/capture_progress/blu

# if unowned, revert towards zero
execute if score @s tf2.team matches 0 run scoreboard players operation @s tf2.red_progress -= $decay tf2.var
execute if score @s tf2.team matches 0 run scoreboard players operation @s tf2.blu_progress -= $decay tf2.var
scoreboard players operation @s tf2.red_progress > $0 tf2.const
scoreboard players operation @s tf2.blu_progress > $0 tf2.const

# failsafe; probably not needed
scoreboard players reset $output tf2.var