execute if score $Settings.show_debug_messages tf2.var matches 1.. run tellraw @a ["",{"text":"<Debug> ","bold":true,"type":"text"},{"text":"Game has been started by ","bold":false,"type":"text"},{"selector":"@s","type":"selector"},{"text":" at "},{"score":{"name":"$__global__","objective":"0008it54g_p_join"},"type":"score"},{"text":" ticks gametime"}]
execute if score $Settings.show_debug_messages tf2.var matches 2.. if score $profiler_installed tf2.var matches 1.. run scoreboard players set $enabled timekeeper.var -1
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute store result storage tf2:index i int 1 run scoreboard players get @s tf2.batch_number
execute store result storage tf2:index map_id int 1 run scoreboard players get @s tf2.map
function tf2:__private__/anonymous/16 with storage tf2:index
execute store result score @s tf2.gamemode run data get entity @s data.map.gamemode
scoreboard players operation $temp tf2.gamemode = @s tf2.gamemode
data modify storage tf2:summon objectives set from entity @s data.map.objectives
execute store result score $temp tf2.index run data get storage tf2:summon objectives
scoreboard players operation $temp tf2.index *= 10 tf2.const
execute if data storage tf2:summon objectives[] run function tf2:__private__/while_loop/0
data remove storage tf2:summon entity
data modify storage tf2:summon doors set from entity @s data.map.spawn_doors.red
data modify storage tf2:summon doors append from entity @s data.map.spawn_doors.blu[]
execute store result score $blu_length tf2.var run data get entity @s data.map.spawn_doors.blu
scoreboard players set $i tf2.var 0
execute if data storage tf2:summon doors[] run function tf2:__private__/while_loop/1
data remove storage tf2:summon entity
data modify storage tf2:summon doors set from entity @s data.map.automatic_doors
execute store result score $i tf2.door.id run data get storage tf2:summon doors
execute if score $i tf2.door.id matches 1.. run function tf2:__private__/while_loop/2
data remove storage tf2:summon entity
data modify storage tf2:summon pickups set from entity @s data.map.pickups
execute if data storage tf2:summon pickups[] run function tf2:__private__/while_loop/3
data remove storage tf2:summon entity
data modify storage tf2:summon resupply set from entity @s data.map.resupply_cabinets.red
data modify storage tf2:summon resupply append from entity @s data.map.resupply_cabinets.blu[]
execute store result score $blu_length tf2.var run data get entity @s data.map.resupply_cabinets.blu
scoreboard players set $i tf2.var 0
execute if data storage tf2:summon resupply[] run function tf2:__private__/while_loop/4
data remove storage tf2:summon entity
execute as @e[type=!#tf2:player_like,tag=!tf2.static_prop] unless score @s tf2.batch_number = @s tf2.batch_number run kill @s
execute as @e[type=!#tf2:player_like] if score @s tf2.batch_number = $local tf2.batch_number run function tf2:session/sync with storage tf2:index
execute if score @s tf2.gamemode matches 1..4 run function tf2:objectives/control_point/visuals/spacing
scoreboard players set __if_else__ tf2.var 0
execute if score $comp_queue_length tf2.var matches 12.. run function tf2:__private__/if_else/24
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/26
scoreboard players operation @s tf2.queue_type = @e[type=#tf2:player_like,tag=tf2.current,limit=1] tf2.queue_type
execute if score @s tf2.gamemode matches 1..2 run function tf2:__private__/if_else/27
execute if score @s tf2.gamemode matches 3 run function tf2:__private__/if_else/28
function tf2:start_game/as_marker/tell_info
scoreboard players reset @e[tag=tf2.current] tf2.team
scoreboard players set $team_temp tf2.var 0
execute store result score $count tf2.var if entity @e[tag=tf2.current]
execute as @a[tag=tf2.current,sort=random] run function tf2:team_assign
scoreboard players operation $count tf2.var %= 2 tf2.const
execute if score $count tf2.var matches 1 if predicate tf2:coin_flip run scoreboard players set @r[tag=tf2.current,scores={tf2.team=1}] tf2.team 2
execute as @e[type=!player,tag=tf2.current,sort=random] run function tf2:team_assign
tag @s add tf2.in_use
tag @e remove tf2.current