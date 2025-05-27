data modify storage tf2:vars distance set from storage iris:output Distance
execute unless predicate tf2:hide_ammo at @s run function tf2:weapons/draw_line
execute store success score $backstab tf2.var if items entity @s weapon.mainhand minecraft:snowball[minecraft:custom_data~{attributes:{canBackstab:true}}]
execute as @e[type=#tf2:player_like,tag=iris.target,tag=!tf2.dead,gamemode=!spectator] run function tf2:weapons/apply_damage