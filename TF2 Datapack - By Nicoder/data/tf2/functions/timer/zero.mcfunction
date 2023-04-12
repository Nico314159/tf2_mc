#> tf2:timer/zero
#
# @context marker
# @within tf2:timer/main


scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e[type=marker,tag=tf2.control_point] if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
tag @e[tag=tf2.current] remove tf2.overtime
execute as @e[type=marker,tag=tf2.current] if score @s tf2.blu_progress < @s tf2.capture_threshold if score @s tf2.red_progress < @s tf2.capture_threshold run tag @s add tf2.overtime
execute unless entity @s[tag=tf2.overtime] if entity @e[type=marker,tag=tf2.current,tag=tf2.overtime] run function tf2:timer/overtime
tag @e[type=marker] remove tf2.current
execute if score @s tf2.timer matches 0 run function tf2:timer/end_game



