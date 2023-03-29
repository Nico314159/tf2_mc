#> tf2:objectives/control_point/set_owner/blu
# 
# @within tf2:objectives/control_point/main
# @context marker & position

# if KOTH: start counting down BLU's timer & pause RED's
# if 5CP & this is mid: unlock RED's 1st (✓)
# else if 5CP: lock/unlock adjacent points in line (✓)
# if ATK/DEF: lock this point (✓) & unlock next point (✓)
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e[type=marker] if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
execute if score @s tf2.gamemode matches 1..2 run scoreboard players operation @e[type=marker,tag=tf2.batch,tag=tf2.current,limit=1] tf2.timer += @s tf2.increment
execute if score @s tf2.gamemode matches 1 at @s run function tf2:objectives/control_point/on_capture/blu/atk_def
execute if score @s[tag=!tf2.multistage] tf2.gamemode matches 2 run function tf2:objectives/control_point/on_capture/blu/symmetric
execute if data entity @s data.increment run function tf2:objectives/control_point/on_capture/add_time
tag @e[type=marker,tag=tf2.current] remove tf2.current

scoreboard players set @s tf2.team 2
scoreboard players operation @s tf2.blu_progress = @s tf2.capture_threshold

# test purposes only
setblock ~ ~-1 ~ blue_stained_glass