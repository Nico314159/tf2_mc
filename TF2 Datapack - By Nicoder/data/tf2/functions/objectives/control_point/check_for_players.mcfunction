tag @s remove tf2.contested
tag @e[type=#tf2:player_like,distance=..1.5,tag=!tf2.unable_to_cap,gamemode=!spectator] add tf2.on_point
execute store result score $red_on_point tf2.var if entity @e[tag=tf2.on_point,scores={tf2.team=1}]
execute store result score $blu_on_point tf2.var if entity @e[tag=tf2.on_point,scores={tf2.team=2}]
execute if score $red_on_point tf2.var matches 1.. if score $blu_on_point tf2.var matches 1.. run tag @s add tf2.contested
execute if entity @s[tag=!tf2.contested] run function tf2:objectives/control_point/main
execute if entity @s[tag=!tf2.contested] run function tf2:objectives/control_point/decay/init
tag @e[type=#tf2:player_like] remove tf2.on_point