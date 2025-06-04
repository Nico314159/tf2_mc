tag @s remove tf2.contested
execute positioned ~-3 ~-1 ~-3 as @e[type=#tf2:player_like,dx=5,dy=1,dz=5] run function tf2:player/determine_cap_rules
tag @a[gamemode=spectator] remove tf2.on_point
execute store result score $red_scouts tf2.var if entity @e[tag=tf2.on_point,tag=tf2.can_cap,scores={tf2.team=1,tf2.class=3}]
execute store result score $red_on_point tf2.var run execute if entity @e[tag=tf2.on_point,tag=tf2.can_cap,scores={tf2.team=1}]
scoreboard players operation $red_on_point tf2.var += $red_scouts tf2.var
execute store result score $blu_scouts tf2.var if entity @e[tag=tf2.on_point,tag=tf2.can_cap,scores={tf2.team=2,tf2.class=3}]
execute store result score $blu_on_point tf2.var run execute if entity @e[tag=tf2.on_point,tag=tf2.can_cap,scores={tf2.team=2}]
scoreboard players operation $blu_on_point tf2.var += $blu_scouts tf2.var
execute store result score $red_defend tf2.var if entity @e[tag=tf2.on_point,tag=tf2.can_defend,scores={tf2.team=1}]
execute store result score $blu_defend tf2.var if entity @e[tag=tf2.on_point,tag=tf2.can_defend,scores={tf2.team=2}]
execute if score $red_on_point tf2.var matches 1.. if score $blu_defend tf2.var matches 1.. run tag @s add tf2.contested
execute if score $blu_on_point tf2.var matches 1.. if score $red_defend tf2.var matches 1.. run tag @s add tf2.contested
execute unless entity @s[tag=tf2.contested] run function tf2:objectives/control_point/main
tag @e[type=#tf2:player_like] remove tf2.on_point