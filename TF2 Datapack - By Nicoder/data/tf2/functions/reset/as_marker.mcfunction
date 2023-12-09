execute if score $Settings.show_debug_messages tf2.var matches 1 run tellraw @a ["",{"text":"<Debug> ","bold":true,"type":"text"},{"text":"Game controlled by ","bold":false,"type":"text"},{"selector":"@s","type":"selector"},{"text":" has ended at "},{"score":{"name":"$__global__","objective":"0008it54g_p_join"},"type":"score"},{"text":" ticks gametime"}]
execute store result storage tf2.__temp__:index i int 1 run scoreboard players get @s tf2.batch_number
execute if score @s tf2.gamemode matches 1..2 run function tf2:timer/hide with storage tf2.__temp__:index
execute if score @s tf2.gamemode matches 3 run function tf2:koth_timer/hide with storage tf2.__temp__:index
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e if score @s tf2.batch_number = $local tf2.batch_number run tag @s add tf2.current
execute as @e[type=marker,tag=tf2.control_point,tag=tf2.current] at @s run function tf2:reset/as_objectives
execute as @a[tag=tf2.current] run function tf2:reset/as_players
execute if score $enabled timekeeper.var matches -1 if score $profiler_installed tf2.var matches 1.. run scoreboard players set $enabled timekeeper.var 1
kill @s
function tf2:setup_markers