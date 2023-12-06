title @s actionbar ["",{"text":"\u2764 Health: 0 / ","color":"red","type":"text"},{"score":{"name":"@s","objective":"tf2.max_health"},"color":"red","type":"score"}]
title @s times 0 3 3
spawnpoint @s ~ ~ ~
tag @s add tf2.dead
gamemode spectator @s
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e[type=marker,tag=tf2.batch] if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.temp
execute store result score @s[scores={tf2.team=1}] tf2.respawn_timer run data get entity @e[type=marker,tag=tf2.temp,limit=1] data.map.spawn_time.red[0] 20
execute store result score @s[scores={tf2.team=2}] tf2.respawn_timer run data get entity @e[type=marker,tag=tf2.temp,limit=1] data.map.spawn_time.blu[0] 20
tag @e[type=marker] remove tf2.temp