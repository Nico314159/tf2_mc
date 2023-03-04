#> tf2:death
#
# Puts the dead player into spectator mode and starts their respawn timer.
#
# @within tf2:tick
# @context a (dead) player
# @handles death
# @reads
#   score @s tf2.batch_number
#   score ⟨marker⟩ tf2.batch_number
#       Selects the game marker that matches the executing player
# @writes
#   score @s tf2.dead
#       Boolean to prevent function from being called repeatedly
# @input
#   data entity ⟨marker⟩ data.map.spawn_time.(red|blu)[0]
#       Current length of RED/BLU's respawn timer on this map (in SECONDS) 
#   score @s tf2.team
#       Team of the executing player (1 = RED, 2 = BLU)
# @output
#   score @s tf2.respawn_timer
#       Length of time until the executing player respawns (in TICKS)

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