tag @s add tf2.temp
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e[type=marker,tag=tf2.batch] if score @s tf2.batch_number = $local tf2.batch_number run function tf2:spawn/tp
tag @s remove tf2.temp
gamemode adventure @s
tag @s remove tf2.dead
scoreboard players operation @s tf2.health = @s tf2.max_health