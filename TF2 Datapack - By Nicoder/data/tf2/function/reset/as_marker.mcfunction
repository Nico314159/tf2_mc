execute if score $Settings.show_debug_messages tf2.var matches 1 run tellraw @a ["",{"text":"<Debug> ","bold":true,"type":"text"},{"text":"Game controlled by ","bold":false,"type":"text"},{"selector":"@s","type":"selector"},{"text":" has ended at "},{"score":{"name":"$__global__","objective":"xrroou1m8_p_join"},"type":"score"},{"text":" ticks gametime"}]
execute store result storage tf2:index i int 1 run scoreboard players get @s tf2.batch_number
function tf2:timer/hide with storage tf2:index
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
execute as @e[type=item_display,tag=tf2.control_point,tag=tf2.current] at @s run function tf2:reset/as_objectives
execute as @a[tag=tf2.current] run function tf2:reset/as_players
kill @e[type=item_display,tag=tf2.current,tag=!tf2.permanent]
execute as @e[type=item,tag=tf2.pickup,tag=tf2.current] run function tf2:pickup/delete_stack
kill @e[type=area_effect_cloud,tag=tf2.current]
kill @e[type=falling_block,tag=tf2.current]
kill @e[type=marker,tag=tf2.spawn_door,tag=tf2.current]
kill @e[type=item_display,tag=tf2.current,tag=tf2.projectile]
execute if score $enabled timekeeper.var matches -1 if score $profiler_installed tf2.var matches 1.. run scoreboard players set $enabled timekeeper.var 1
kill @s
function tf2:setup_markers