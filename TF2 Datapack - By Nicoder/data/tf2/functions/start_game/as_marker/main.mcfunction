execute if score $Settings.show_debug_messages tf2.var matches 1.. run tellraw @a ["",{"text":"<Debug> ","bold":true},{"text":"Game has been started by ","bold":false},{"selector":"@s"},{"text":" at "},{"score":{"name":"$__global__","objective":"0008it54g_p_join"}},{"text":" ticks gametime"}]
execute if score $Settings.show_debug_messages tf2.var matches 2.. if score $profiler_installed tf2.var matches 1.. run scoreboard players set $enabled timekeeper.var -1
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute store result storage tf2.__temp__:index i int 1 run scoreboard players get @s tf2.batch_number
function tf2:__private__/anonymous/7 with storage tf2.__temp__:index
# TODO: make dynamic for selected maps instead of hardcoding
data modify entity @s[scores={tf2.map=0}] data.map set from storage tf2:maps 0
data modify entity @s[scores={tf2.map=1}] data.map set from storage tf2:maps 1
execute store result score @s tf2.gamemode run data get entity @s data.map.gamemode
scoreboard players operation $temp tf2.gamemode = @s tf2.gamemode
data modify storage tf2.__temp__:summon objectives set from entity @s data.map.objectives
execute store result score $temp tf2.index if data storage tf2.__temp__:summon objectives[]
scoreboard players operation $temp tf2.index *= 10 tf2.const
execute if data storage tf2.__temp__:summon objectives[] run function tf2:__private__/while_loop/0
execute if score @s tf2.gamemode matches 1..4 run function tf2:objectives/control_point/visuals/spacing
data remove entity @s data.map.objectives
data remove storage tf2.__temp__:summon entity
execute as @e[type=marker,tag=tf2.control_point,scores={tf2.team=1}] at @s run setblock ~ ~-1 ~ red_stained_glass
execute as @e[type=marker,tag=tf2.control_point,scores={tf2.team=2}] at @s run setblock ~ ~-1 ~ blue_stained_glass
scoreboard players set __if_else__ tf2.var 0
execute if score $comp_queue_length tf2.var matches 12.. run function tf2:__private__/if_else/22
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/23
scoreboard players operation @s tf2.queue_type = @e[type=#tf2:player_like,tag=tf2.current,limit=1] tf2.queue_type
execute store result score @s tf2.timer run data get entity @s data.map.timer 20
execute if data entity @s data.map.timer run function tf2:timer/set_max with storage tf2.__temp__:index
execute if data entity @s data.map.timer run function tf2:timer/show with storage tf2.__temp__:index
execute if data entity @s data.map.setup_time run function tf2:timer/begin_setup
function tf2:start_game/as_marker/tell_info
scoreboard players reset @e[tag=tf2.current] tf2.team
scoreboard players set $team_temp tf2.var 0
execute store result score $count tf2.var if entity @e[tag=tf2.current]
execute as @e[tag=tf2.current,sort=random] run function tf2:team_assign
scoreboard players operation $count tf2.var %= 2 tf2.const
execute if score $count tf2.var matches 1 if predicate tf2:coin_flip run scoreboard players set @e[tag=tf2.current,sort=random,limit=1,scores={tf2.team=1}] tf2.team 2
tag @s add tf2.in_use
tag @e remove tf2.current