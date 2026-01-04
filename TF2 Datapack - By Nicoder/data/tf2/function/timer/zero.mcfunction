scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e[type=item_display,tag=tf2.control_point] if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
tag @e[tag=tf2.current,tag=tf2.objective] remove tf2.overtime
execute as @e[type=item_display,tag=tf2.current,tag=tf2.objective] if score @s tf2.blu_progress < @s tf2.capture_threshold if score @s tf2.red_progress < @s tf2.capture_threshold unless entity @s[scores={tf2.team=0,tf2.blu_progress=0,tf2.red_progress=0}] run tag @s add tf2.overtime
execute store result storage tf2:index i int 1 run scoreboard players get @s tf2.batch_number
execute unless entity @s[tag=tf2.overtime] if entity @e[type=item_display,tag=tf2.current,tag=tf2.overtime] run function tf2:timer/overtime with storage tf2:index
tag @e[type=item_display] remove tf2.current
execute if score @s tf2.timer matches 0 run function tf2:timer/end_game