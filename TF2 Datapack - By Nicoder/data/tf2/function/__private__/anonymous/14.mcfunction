scoreboard players set @s tf2.map 4
scoreboard players operation @s tf2.batch_number > @e[type=marker,tag=tf2.batch] tf2.batch_number
scoreboard players add @s tf2.batch_number 1
execute store result storage tf2:index i int 1 run scoreboard players get @s tf2.batch_number
function tf2:session/sync with storage tf2:index