spawnpoint @s ~ ~ ~
tag @s add tf2.dead
gamemode spectator @s
spectate @r[gamemode=!spectator]
scoreboard players operation $temp tf2.batch_number = @s tf2.batch_number
execute as @e[type=marker,tag=tf2.batch] if score @s tf2.batch_number = $temp tf2.batch_number run tag @s add tf2.temp
execute if score @s tf2.team matches 1 store result score @s tf2.respawn_timer run data get entity @e[type=marker,tag=tf2.temp,limit=1] data.map.spawn_time.red[0] 20
execute if score @s tf2.team matches 2 store result score @s tf2.respawn_timer run data get entity @e[type=marker,tag=tf2.temp,limit=1] data.map.spawn_time.blu[0] 20
tag @e[type=marker] remove tf2.temp
scoreboard players set @s tf2.dead 0 