execute at @s[type=player] run tp ~ ~0.1 ~
tag @s add tf2.self
execute summon marker run function tf2:raycast/to_self
data modify storage tf2:vars distance set from storage iris:output Distance
tag @s remove tf2.self
execute at @s[type=player] run tp ~ ~-0.1 ~
execute if data entity @s[type=item_display,tag=iris.targeted_entity,tag=tf2.projectile,tag=tf2.stuck] item.components.minecraft:custom_data.projectile.explode_alt_fire run return run execute positioned as @n[tag=tf2.origin] run function tf2:class/demoman/unstick_stickybomb
execute if entity @s[type=!player,predicate=!tf2:is_a_building] run return fail
execute if entity @s[tag=tf2.hit_by_projectile] run data modify storage tf2:vars distance set value 0
scoreboard players set __logic__0 tf2.var 0
execute if entity @s[tag=tf2.hit_by_projectile] run scoreboard players set __logic__0 tf2.var 1
execute unless score __logic__0 tf2.var matches 1 if entity @s[tag=iris.targeted_entity] run scoreboard players set __logic__0 tf2.var 1
execute if score __logic__0 tf2.var matches 1 run function tf2:projectile/splash_damage