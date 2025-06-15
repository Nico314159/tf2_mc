data modify storage tf2:vars distance set from storage iris:output Distance
execute unless predicate tf2:hide_ammo at @s run function tf2:weapons/draw_line
execute store success score $backstab tf2.var if items entity @s weapon.mainhand minecraft:snowball[minecraft:custom_data~{attributes:{canBackstab:true}}]
execute as @e[type=#tf2:player_like,tag=iris.targeted_entity,tag=!tf2.dead,gamemode=!spectator] run function tf2:weapons/apply_damage
execute as @e[type=minecraft:item_display,tag=tf2.projectile,tag=tf2.stuck,tag=iris.targeted_entity] unless score @s tf2.team = @n[type=#tf2:player_like,tag=iris.executing] tf2.team if data entity @s item.components.minecraft:custom_data.projectile{model:"stickybomb"} run function tf2:projectile/fizzle