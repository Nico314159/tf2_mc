scoreboard players add @s timeScoped 1
scoreboard players set @s gracePeriod 0
tag @s add scopedIn

execute anchored eyes positioned ^ ^ ^ run function vdv_iris:get_target
# execute as @e[type=minecraft:marker, tag=vdv_iris.ray] run tellraw NicoWill314 "if you are seeing this, tf/scope has been run."
execute as @e[type=minecraft:marker, tag=vdv_iris.ray] run function vdv_iris:set_coordinates
execute at @e[type=minecraft:marker, tag=vdv_iris.ray] if entity @s[team=RED] run particle dust 1.0 0.2 0.0 0.9 ^ ^ ^ 0 0 0 0 2 force @a
execute at @e[type=minecraft:marker, tag=vdv_iris.ray] if entity @s[team=BLU] run particle dust 0.0 0.4 1.0 0.9 ^ ^ ^ 0 0 0 0 2 force @a
execute at @e[type=minecraft:marker, tag=vdv_iris.ray] if entity @s[team=GRN] run particle dust 0.2 1.0 0.0 0.9 ^ ^ ^ 0 0 0 0 2 force @a
execute at @e[type=minecraft:marker, tag=vdv_iris.ray] if entity @s[team=YLW] run particle dust 1.0 0.8 0.0 0.9 ^ ^ ^ 0 0 0 0 2 force @a

advancement revoke @s only tf:scope requirement 