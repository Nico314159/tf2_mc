execute as @a[scores={on_event_1mqyp2x=1..}] at @s run function tf2:__private__/on_event/used_carrot_on_a_stick
scoreboard players add $__global__ 0008it54g_p_join 1
scoreboard players add @a 0008it54g_p_join 1
execute as @a unless score @s 0008it54g_p_join = $__global__ 0008it54g_p_join run function tf2:__private__/player_join/main
execute unless score $found_dependency tf2.var matches 1.. run return -118
execute as @e[tag=tf2.visual] run scoreboard players remove @s tf2.timer 1
kill @e[tag=tf2.visual,scores={tf2.timer=..0}]
execute as @e[type=#tf2:player_like,tag=!tf2.in_queue,tag=!tf2.is_playing,scores={tf2.queue_type=1..3}] run function tf2:join_queue
execute as @a[tag=!tf2.allowed_to_sprint] run function tf2:disable_sprint
execute store result score $comp_queue_length tf2.var if entity @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=1}]
execute store result score $casual_queue_length tf2.var if entity @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=2}]
execute store result score $chaos_queue_length tf2.var if entity @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=3}]
scoreboard players set $enough_in_queue tf2.var 1
execute if score $comp_queue_length tf2.var matches ..11 if score $casual_queue_length tf2.var matches ..23 if score $chaos_queue_length tf2.var matches ..39 run scoreboard players set $enough_in_queue tf2.var 0
execute if score $enough_in_queue tf2.var matches 1.. as @e[type=marker,tag=tf2.batch,tag=!tf2.in_use,sort=random,limit=1] run function tf2:start_game/as_marker/main
execute as @a[tag=tf2.is_playing,tag=!tf2.dead] at @s if entity @s[y=-45,dy=5] run function tf2:__private__/anonymous/12
execute as @e[type=#tf2:player_like,tag=tf2.is_playing,tag=!tf2.dead,scores={tf2.health=..0}] run function tf2:death
execute as @e[type=#tf2:player_like,tag=tf2.dead] run function tf2:__private__/anonymous/13
execute as @e[type=#tf2:player_like,tag=tf2.dead,scores={tf2.respawn_timer=..0}] run function tf2:spawn/init
execute as @e[type=marker,tag=tf2.in_use] if score @s tf2.timer = @s tf2.timer run function tf2:timer/main
execute as @e[type=marker,tag=tf2.control_point,tag=!tf2.init] at @s run function tf2:objectives/control_point/visuals/init
execute as @e[type=marker,tag=tf2.control_point,tag=!tf2.locked] at @s run function tf2:objectives/control_point/check_for_players
execute as @e[type=marker,tag=tf2.in_use,scores={tf2.gamemode=1..4}] if entity @a run function tf2:objectives/control_point/gamestate
execute as @e[type=#tf2:player_like,tag=tf2.is_playing,gamemode=!spectator] at @s run function tf2:__private__/anonymous/16
execute as @e[type=marker,tag=tf2.batch] run function tf2:__private__/anonymous/18