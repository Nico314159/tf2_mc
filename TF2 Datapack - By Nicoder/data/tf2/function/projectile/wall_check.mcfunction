execute at @s run tp ~ ~0.1 ~
tag @s add tf2.self
execute summon marker run function tf2:raycast/to_self
data modify storage tf2:vars distance set from storage iris:output Distance
tag @s remove tf2.self
execute at @s run tp ~ ~-0.1 ~
execute if data entity @s[type=item_display,tag=iris.targeted_entity,tag=tf2.projectile,tag=tf2.stuck] item.components.minecraft:custom_data.projectile.explode_alt_fire run return run execute positioned as @n[tag=tf2.origin] run function tf2:class/demoman/unstick_stickybomb
execute if entity @s[type=!player] run return fail
execute if entity @s[type=player,tag=tf2.hit_by_projectile] run data modify storage tf2:vars distance set value 0
execute if entity @s[type=player,tag=tf2.hit_by_projectile] run function tf2:projectile/splash_damage
execute if entity @s[type=player,tag=!tf2.hit_by_projectile,tag=iris.targeted_entity] run function tf2:projectile/splash_damage