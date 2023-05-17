scoreboard players set @s tf2.map 1
scoreboard players operation @s tf2.batch_number > @e[type=marker,tag=tf2.batch] tf2.batch_number
scoreboard players add @s tf2.batch_number 1