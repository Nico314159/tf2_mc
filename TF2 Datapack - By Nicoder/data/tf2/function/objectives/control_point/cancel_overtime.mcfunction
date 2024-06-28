tag @s remove tf2.overtime
execute store result storage tf2:index i int 1 run scoreboard players get @s tf2.batch_number
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e[type=marker,tag=tf2.in_use] at @s if score @s tf2.batch_number = $local tf2.batch_number run function tf2:timer/cancel_overtime with storage tf2:index