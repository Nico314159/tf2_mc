execute if entity @a[tag=tf2.temp,scores={tf2.team=1},limit=1] run data modify entity @s Pos set from entity @s data.map.spawn.red[0]
execute if entity @a[tag=tf2.temp,scores={tf2.team=2},limit=1] run data modify entity @s Pos set from entity @s data.map.spawn.blu[0]
tp @a[tag=tf2.temp,limit=1] @s