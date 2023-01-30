execute if entity @e[type=#tf2:player_like,tag=tf2.temp,scores={tf2.team=1},limit=1] run data modify entity @s Pos set from entity @s data.map.spawn.red[0]
execute if entity @e[type=#tf2:player_like,tag=tf2.temp,scores={tf2.team=2},limit=1] run data modify entity @s Pos set from entity @s data.map.spawn.blu[0]
tp @e[type=#tf2:player_like,tag=tf2.temp,limit=1] @s