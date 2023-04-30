#> tf2:tick
#
# @handles #minecraft:tick
# @context any

scoreboard players add $global tf2.ticks 1
scoreboard players add @a tf2.ticks 1
execute if entity @a[tag=tf2.in_queue] run scoreboard players add $waiting_room tf2.ticks 1
execute as @a unless score @s tf2.ticks = $global tf2.ticks run function tf2:login

execute as @e[type=#tf2:player_like,tag=!tf2.in_queue,tag=!tf2.is_playing] run function tf2:select
execute as @a[tag=!tf2.allowed_to_sprint] run function tf2:disable_sprint

execute store result score $comp_queue_length tf2.var if entity @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=1}]
execute store result score $casual_queue_length tf2.var if entity @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=2}]
execute store result score $chaos_queue_length tf2.var if entity @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=3}]

scoreboard players set $enough_in_queue tf2.var 1
execute unless score $comp_queue_length tf2.var matches 12.. unless score $casual_queue_length tf2.var matches 24.. unless score $chaos_queue_length tf2.var matches 40.. run scoreboard players set $enough_in_queue tf2.var 0
execute if score $enough_in_queue tf2.var matches 1 as @e[type=marker,tag=tf2.batch,tag=!tf2.in_use,sort=random,limit=1] run function tf2:start_game/as_marker/main

execute as @e[type=#tf2:player_like,tag=tf2.is_playing,scores={tf2.dead=1..}] run function tf2:death
execute as @e[type=#tf2:player_like,tag=tf2.dead] run scoreboard players remove @s tf2.respawn_timer 1
execute as @e[type=#tf2:player_like,tag=tf2.dead,scores={tf2.respawn_timer=..0}] run function tf2:spawn/init

execute as @e[type=marker,tag=tf2.in_use] if score @s tf2.timer = @s tf2.timer run function tf2:timer/main

execute as @e[type=marker,tag=tf2.control_point,tag=!tf2.init] at @s run function tf2:objectives/control_point/visuals/init
execute as @e[type=marker,tag=tf2.control_point,tag=!tf2.locked] at @s run function tf2:objectives/control_point/check_for_players
execute as @e[type=marker,tag=tf2.control_point,tag=!tf2.contested,tag=!tf2.locked] run function tf2:objectives/control_point/decay/init

execute as @e[type=marker,tag=tf2.in_use,scores={tf2.gamemode=1..4}] if entity @a run function tf2:objectives/control_point/gamestate

