execute as @a[scores={on_event_1mqyp2x=1..}] at @s run function tf2:__private__/on_event/used_carrot_on_a_stick
execute unless score $retina_installed tf2.var matches 1.. run return -118
scoreboard players add $global tf2.ticks 1
scoreboard players add @a tf2.ticks 1
execute if entity @a[tag=tf2.in_queue] run scoreboard players add $waiting_room tf2.ticks 1
execute as @a unless score @s tf2.ticks = $global tf2.ticks run function tf2:login
execute as @e[type=#tf2:player_like,tag=!tf2.in_queue,tag=!tf2.is_playing,scores={tf2.queue_type=1..3}] run function tf2:select_queue
execute as @a[tag=!tf2.allowed_to_sprint] run function tf2:disable_sprint
execute store result score $comp_queue_length tf2.var if entity @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=1}]
execute store result score $casual_queue_length tf2.var if entity @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=2}]
execute store result score $chaos_queue_length tf2.var if entity @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=3}]
scoreboard players set $enough_in_queue tf2.var 1
execute if score $comp_queue_length tf2.var matches ..11 if score $casual_queue_length tf2.var matches ..23 if score $chaos_queue_length tf2.var matches ..39 run scoreboard players set $enough_in_queue tf2.var 0
execute if score $enough_in_queue tf2.var matches 1.. as @e[type=marker,tag=tf2.batch,tag=!tf2.in_use,sort=random,limit=1] run function tf2:start_game/as_marker/main
execute as @a[tag=tf2.is_playing,tag=!tf2.dead] at @s if entity @s[y=-45,dy=5] run function tf2:__private__/anonymous/3
execute as @e[type=#tf2:player_like,tag=tf2.is_playing,tag=!tf2.dead,scores={tf2.health=..0}] run function tf2:death
execute as @e[type=#tf2:player_like,tag=tf2.dead] run function tf2:__private__/anonymous/4
execute as @e[type=#tf2:player_like,tag=tf2.dead,scores={tf2.respawn_timer=..0}] run function tf2:spawn/init
execute as @e[type=marker,tag=tf2.in_use] if score @s tf2.timer = @s tf2.timer run function tf2:timer/main
execute as @e[type=marker,tag=tf2.control_point,tag=!tf2.init] at @s run function tf2:objectives/control_point/visuals/init
execute as @e[type=marker,tag=tf2.control_point,tag=!tf2.locked] at @s run function tf2:objectives/control_point/check_for_players
execute as @e[type=marker,tag=tf2.in_use,scores={tf2.gamemode=1..4}] if entity @a run function tf2:objectives/control_point/gamestate
execute as @e[type=marker,scores={tf2.batch_number=1}] unless score @s tf2.session = $global_1 tf2.session run kill @s
execute as @e[type=marker,scores={tf2.batch_number=2}] unless score @s tf2.session = $global_2 tf2.session run kill @s
execute as @e[type=marker,scores={tf2.batch_number=3}] unless score @s tf2.session = $global_3 tf2.session run kill @s
execute as @e[type=marker,scores={tf2.batch_number=4}] unless score @s tf2.session = $global_4 tf2.session run kill @s
execute as @e[type=marker,scores={tf2.batch_number=5}] unless score @s tf2.session = $global_5 tf2.session run kill @s