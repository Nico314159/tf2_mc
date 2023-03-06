#> tf2:objectives/control_point/decay/main
#
# @within tf2:objectives/control_point/decay/init

scoreboard players operation $decay tf2.var = @s tf2.capture_threshold
scoreboard players operation $decay tf2.var /= $1800 tf2.const
execute as @s[tag=tf2.overtime] run scoreboard players operation $decay tf2.var *= $6 tf2.const

# revert in direction of owner team
execute if score @s tf2.team matches 1 run scoreboard players operation @s tf2.red_progress += $decay tf2.var
execute if score @s tf2.team matches 2 run scoreboard players operation @s tf2.blu_progress += $decay tf2.var

# if unowned, revert towards zero
execute if score @s tf2.team matches 0 run scoreboard players operation @s tf2.red_progress -= $decay tf2.var
execute if score @s tf2.team matches 0 run scoreboard players operation @s tf2.blu_progress -= $decay tf2.var
scoreboard players operation @s tf2.red_progress > $0 tf2.const
scoreboard players operation @s tf2.blu_progress > $0 tf2.const
