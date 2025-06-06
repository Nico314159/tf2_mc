tag @s add tf2.player
execute at @n[tag=tf2.damage_source] summon marker run function tf2:__private__/anonymous/14
tag @s add tf2.player
data modify storage tf2:vars distance set from storage iris:output Distance
tag @s remove tf2.player
execute if entity @s[tag=tf2.hit_by_projectile] run data modify storage tf2:vars distance set value 0
execute if entity @s[tag=tf2.hit_by_projectile] run function tf2:projectile/splash_damage
execute store result score $id tf2.var run data get storage iris:output TargetedEntity
execute unless entity @s[tag=tf2.hit_by_projectile] if score $id tf2.var = @s iris.id run function tf2:projectile/splash_damage