scoreboard players add @s timeScoped 1
scoreboard players set @s gracePeriod 0
tag @s add scopedIn
tag @s add hide_dot
execute anchored eyes positioned ^ ^ ^ run function retina:get_target
# execute as @e[type=minecraft:marker, tag=retina.ray] run tellraw NicoWill314 "if you are seeing this, tf2/scope has been run."
execute as @e[type=minecraft:marker, tag=retina.ray] run function retina:set_coordinates
execute at @e[type=minecraft:marker, tag=retina.ray] if entity @s[team=RED] run particle dust 1.0 0.2 0.0 0.9 ^ ^ ^ 0 0 0 0 2 force @a[tag=!hide_dot,tag=!retina.target]
execute at @e[type=minecraft:marker, tag=retina.ray] if entity @s[team=BLU] run particle dust 0.0 0.4 1.0 0.9 ^ ^ ^ 0 0 0 0 2 force @a[tag=!hide_dot,tag=!retina.target]
execute at @e[type=minecraft:marker, tag=retina.ray] if entity @s[team=GRN] run particle dust 0.2 1.0 0.0 0.9 ^ ^ ^ 0 0 0 0 2 force @a[tag=!hide_dot,tag=!retina.target]
execute at @e[type=minecraft:marker, tag=retina.ray] if entity @s[team=YLW] run particle dust 1.0 0.8 0.0 0.9 ^ ^ ^ 0 0 0 0 2 force @a[tag=!hide_dot,tag=!retina.target]

execute at @e[type=minecraft:marker, tag=retina.ray] if entity @s[team=RED,distance=..5] run particle dust 1.0 0.2 0.0 0.25 ^ ^ ^ 0 0 0 0 2 force @s
execute at @e[type=minecraft:marker, tag=retina.ray] if entity @s[team=BLU,distance=..5] run particle dust 0.0 0.4 1.0 0.25 ^ ^ ^ 0 0 0 0 2 force @s
execute at @e[type=minecraft:marker, tag=retina.ray] if entity @s[team=GRN,distance=..5] run particle dust 0.2 1.0 0.0 0.25 ^ ^ ^ 0 0 0 0 2 force @s
execute at @e[type=minecraft:marker, tag=retina.ray] if entity @s[team=YLW,distance=..5] run particle dust 1.0 0.8 0.0 0.25 ^ ^ ^ 0 0 0 0 2 force @s

execute at @e[type=minecraft:marker, tag=retina.ray] if entity @s[team=RED,distance=5..50] run particle dust 1.0 0.2 0.0 0.5 ^ ^ ^ 0 0 0 0 2 force @s
execute at @e[type=minecraft:marker, tag=retina.ray] if entity @s[team=BLU,distance=5..50] run particle dust 0.0 0.4 1.0 0.5 ^ ^ ^ 0 0 0 0 2 force @s
execute at @e[type=minecraft:marker, tag=retina.ray] if entity @s[team=GRN,distance=5..50] run particle dust 0.2 1.0 0.0 0.5 ^ ^ ^ 0 0 0 0 2 force @s
execute at @e[type=minecraft:marker, tag=retina.ray] if entity @s[team=YLW,distance=5..50] run particle dust 1.0 0.8 0.0 0.5 ^ ^ ^ 0 0 0 0 2 force @s

execute at @e[type=minecraft:marker, tag=retina.ray] if entity @s[team=RED,distance=50..] run particle dust 1.0 0.2 0.0 0.9 ^ ^ ^ 0 0 0 0 2 force @s
execute at @e[type=minecraft:marker, tag=retina.ray] if entity @s[team=BLU,distance=50..] run particle dust 0.0 0.4 1.0 0.9 ^ ^ ^ 0 0 0 0 2 force @s
execute at @e[type=minecraft:marker, tag=retina.ray] if entity @s[team=GRN,distance=50..] run particle dust 0.2 1.0 0.0 0.9 ^ ^ ^ 0 0 0 0 2 force @s
execute at @e[type=minecraft:marker, tag=retina.ray] if entity @s[team=YLW,distance=50..] run particle dust 1.0 0.8 0.0 0.9 ^ ^ ^ 0 0 0 0 2 force @s

execute at @e[type=minecraft:marker, tag=retina.ray] if entity @s[team=RED] run particle dust 1.0 0.2 0.0 0.3 ^ ^ ^ 0 0 0 0 2 force @a[tag=retina.target]
execute at @e[type=minecraft:marker, tag=retina.ray] if entity @s[team=BLU] run particle dust 0.0 0.4 1.0 0.3 ^ ^ ^ 0 0 0 0 2 force @a[tag=retina.target]
execute at @e[type=minecraft:marker, tag=retina.ray] if entity @s[team=GRN] run particle dust 0.2 1.0 0.0 0.3 ^ ^ ^ 0 0 0 0 2 force @a[tag=retina.target]
execute at @e[type=minecraft:marker, tag=retina.ray] if entity @s[team=YLW] run particle dust 1.0 0.8 0.0 0.3 ^ ^ ^ 0 0 0 0 2 force @a[tag=retina.target]

advancement revoke @s only tf2:scope requirement 