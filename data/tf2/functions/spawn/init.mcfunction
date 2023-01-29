tag @s add tf2.temp
scoreboard players operation $temp tf2.batch_number = @s tf2.batch_number
execute as @e[type=marker,tag=tf2.batch] if score @s tf2.batch_number = $temp tf2.batch_number run function tf2:spawn/tp
tag @s remove tf2.temp