function tf2:__private__/trigger_add/main
scoreboard players add $__global__ xrroou1m8_p_join 1
scoreboard players add @a xrroou1m8_p_join 1
execute as @a unless score @s xrroou1m8_p_join = $__global__ xrroou1m8_p_join run function tf2:__private__/player_join/main
execute unless score $found_dependency tf2.var matches 1.. run return fail
tag @e[type=#tf2:player_like] remove tf2.in_spawn
scoreboard players remove @e[tag=tf2.visual] tf2.lifetime 1
kill @e[tag=tf2.visual,scores={tf2.lifetime=..0}]
execute as @e[type=#tf2:player_like,tag=!tf2.in_queue,tag=!tf2.is_playing,scores={tf2.queue_type=1..3}] run function tf2:join_queue
effect give @a[tag=!tf2.allowed_to_sprint,scores={tf2.food=7..}] hunger 1000 255 true
effect clear @a[tag=!tf2.allowed_to_sprint,scores={tf2.food=7..}] saturation
effect give @a[scores={tf2.food=..1}] saturation 1 2 true
effect give @a[tag=tf2.uber_patient] glowing 1 0 true
effect give @a[tag=tf2.uber_source] glowing 1 0 true
execute store result score $comp_queue_length tf2.var if entity @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=1}]
execute store result score $casual_queue_length tf2.var if entity @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=2}]
execute store result score $chaos_queue_length tf2.var if entity @e[type=#tf2:player_like,tag=tf2.in_queue,scores={tf2.queue_type=3}]
scoreboard players set $enough_in_queue tf2.var 1
execute if score $comp_queue_length tf2.var matches ..11 if score $casual_queue_length tf2.var matches ..23 if score $chaos_queue_length tf2.var matches ..39 run scoreboard players set $enough_in_queue tf2.var 0
execute if score $enough_in_queue tf2.var matches 1.. as @e[type=marker,tag=tf2.batch,tag=!tf2.in_use,sort=random,limit=1] run function tf2:start_game/as_marker/main
execute as @e[type=marker] run function tf2:marker_tick
execute as @e[type=item_display,tag=tf2.control_point,tag=!tf2.init] at @s run function tf2:objectives/control_point/visuals/init
execute as @e[type=item_display,tag=tf2.control_point,tag=!tf2.locked] at @s run function tf2:objectives/control_point/check_for_players
execute as @e[type=#tf2:player_like,tag=tf2.is_playing] at @s run function tf2:player/tick
tag @e[type=#tf2:player_like] remove tf2.on_point
execute as @e[type=item,tag=tf2.pickup] at @s run function tf2:pickup/tick
execute as @e[type=item_display,tag=tf2.projectile] at @s run function tf2:projectile/tick
execute as @e[type=item_display,tag=tf2.door] at @s run function tf2:door/tick
execute store result score $flicker tf2.var run scoreboard players operation $trigger_reminder tf2.var = $__global__ xrroou1m8_p_join
scoreboard players operation $flicker tf2.var %= 20 tf2.const
scoreboard players operation $trigger_reminder tf2.var %= 2400 tf2.const
execute if score $trigger_reminder tf2.var matches 0 run tellraw @a ["",{"text":"Remember, you can type ","color":"gray","type":"text"},{"text":"/trigger controls ","color":"white","bold":true,"type":"text"},{"text":"in chat to see the controls.","color":"gray","type":"text"}]
execute if score $flicker tf2.var matches 0 as @e[type=!#tf2:player_like] run function tf2:session/check_validity
execute if data storage tf2:lookup damages[] run function tf2:__private__/while_loop/6
function tf2:grenade/tick_all