execute as @a[scores={on_event_1mqyp2x=1..}] at @s run function tf2:__private__/on_event/used_carrot_on_a_stick
scoreboard players add $__global__ 0008it54g_p_join 1
scoreboard players add @a 0008it54g_p_join 1
execute as @a unless score @s 0008it54g_p_join = $__global__ 0008it54g_p_join run function tf2:__private__/player_join/main
execute unless score $found_dependency tf2.var matches 1.. run return -1
scoreboard players remove @e[tag=tf2.visual] tf2.lifetime 1
kill @e[tag=tf2.visual,scores={tf2.lifetime=..0}]
execute as @e[type=#tf2:player_like,tag=!tf2.in_queue,tag=!tf2.is_playing,scores={tf2.queue_type=1..3}] run function tf2:join_queue
effect give @a[tag=!tf2.allowed_to_sprint,scores={tf2.food=7..}] hunger 1000 255 true
effect give @a[scores={tf2.food=..1}] saturation 1 1 true
execute store result score $comp_queue_length tf2.var if entity @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=1}]
execute store result score $casual_queue_length tf2.var if entity @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=2}]
execute store result score $chaos_queue_length tf2.var if entity @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=3}]
scoreboard players set $enough_in_queue tf2.var 1
execute if score $comp_queue_length tf2.var matches ..11 if score $casual_queue_length tf2.var matches ..23 if score $chaos_queue_length tf2.var matches ..39 run scoreboard players set $enough_in_queue tf2.var 0
execute if score $enough_in_queue tf2.var matches 1.. as @e[type=marker,tag=tf2.batch,tag=!tf2.in_use,sort=random,limit=1] run function tf2:start_game/as_marker/main
execute as @e[type=marker] run function tf2:marker_tick
execute as @e[type=#tf2:player_like,tag=tf2.is_playing] at @s run function tf2:player_tick
tag @e[type=#tf2:player_like] remove tf2.on_point
execute as @e[type=item,tag=tf2.pickup] at @s run function tf2:pickup_tick