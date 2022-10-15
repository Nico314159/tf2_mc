scoreboard players add $global tf2.ticks 1
scoreboard players add @a tf2.ticks 1
execute if entity @a[tag=tf2.in_queue] run scoreboard players add $waiting_room tf2.ticks 1
execute as @a unless score @s tf2.ticks = $global tf2.ticks run function tf2:login

execute as @a[tag=!tf2.in_queue] run function tf2:select
execute as @a[tag=!tf2.allowed_to_sprint] run function tf2:disable_sprint

execute store result score $comp_queue_length tf2.var if entity @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=1}]
execute store result score $casual_queue_length tf2.var if entity @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=2}]
execute store result score $chaos_queue_length tf2.var if entity @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=3}]

scoreboard players set $enough_in_queue tf2.var 1
execute unless score $comp_queue_length tf2.var matches 12.. unless score $casual_queue_length tf2.var matches 24.. unless score $chaos_queue_length tf2.var matches 40.. run scoreboard players set $enough_in_queue tf2.var 0
execute if score $enough_in_queue tf2.var matches 1 as @e[type=marker,tag=tf2.batch,tag=!tf2.in_use,sort=random,limit=1] run function tf2:start_game/as_marker



