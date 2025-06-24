tag @s add tf2.self
execute summon marker run function tf2:raycast/to_self
data modify storage tf2:vars distance set from storage iris:output Distance
tag @s remove tf2.self
execute if data entity @s[type=item_display,tag=iris.targeted_entity,tag=tf2.projectile,tag=tf2.stuck] item.components.minecraft:custom_data.projectile.explode_alt_fire run return run function tf2:class/demoman/unstick_stickybomb
execute if entity @s[type=!player] run return fail
execute if entity @s[tag=tf2.hit_by_projectile] run data modify storage tf2:vars distance set value 0
execute if entity @s[tag=tf2.hit_by_projectile] run function tf2:projectile/splash_damage
execute store result score $id tf2.var run data get storage iris:output TargetedEntity
execute unless entity @s[tag=tf2.hit_by_projectile] if score $id tf2.var = @s iris.id run function tf2:projectile/splash_damage