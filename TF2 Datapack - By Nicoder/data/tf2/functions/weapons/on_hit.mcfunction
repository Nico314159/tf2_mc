execute unless score $func_id retina.__variable__ matches 100 run return 0
execute unless predicate tf2:hide_ammo at @s run function tf2:weapons/draw_line
execute store success score $potentialBackstab tf2.var if items entity @s weapon.mainhand minecraft:snowball[minecraft:custom_data~{attributes:{canBackstab:true}}]
execute as @e[type=#tf2:player_like,scores={retina.hit=1..},tag=!tf2.dead,gamemode=!spectator] run function tf2:weapons/apply_damage