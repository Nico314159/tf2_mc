scoreboard players operation $sum tf2.var = @s tf2.capture_threshold
scoreboard players operation $sum tf2.var /= 1800 tf2.const
execute unless score @s tf2.team matches 0 run scoreboard players operation $sum tf2.var *= 2 tf2.const
execute store result storage tf2:index i int 1 run scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e[type=marker,tag=tf2.in_use] if score $local tf2.batch_number = @s tf2.batch_number run tag @s add tf2.current
execute if entity @e[type=marker,tag=tf2.in_use,tag=tf2.current,tag=tf2.overtime] run scoreboard players operation $sum tf2.var *= 6 tf2.const
execute if score @s tf2.team matches 1 run function tf2:objectives/control_point/capture_progress/red
execute if score @s tf2.team matches 2 run function tf2:objectives/control_point/capture_progress/blu
execute if score @s[scores={tf2.team=1},tag=tf2.overtime] tf2.red_progress = @s tf2.capture_threshold as @n[type=marker,tag=tf2.current,tag=tf2.overtime] run function tf2:timer/zero with storage tf2:index
execute if score @s[scores={tf2.team=2},tag=tf2.overtime] tf2.blu_progress = @s tf2.capture_threshold as @n[type=marker,tag=tf2.current,tag=tf2.overtime] run function tf2:timer/zero with storage tf2:index
scoreboard players operation @s[scores={tf2.team=0,tf2.red_progress=1..}] tf2.red_progress -= $sum tf2.var
scoreboard players operation @s[scores={tf2.team=0,tf2.blu_progress=1..}] tf2.blu_progress -= $sum tf2.var
scoreboard players operation @s tf2.red_progress > 0 tf2.const
scoreboard players operation @s tf2.blu_progress > 0 tf2.const
execute if entity @s[scores={tf2.team=0,tf2.red_progress=0,tf2.blu_progress=0}] as @n[tag=tf2.overtime,type=marker,tag=tf2.current] run function tf2:timer/zero with storage tf2:index
tag @s[scores={tf2.team=0,tf2.red_progress=0,tf2.blu_progress=0}] remove tf2.said_dialogue
tag @e remove tf2.current