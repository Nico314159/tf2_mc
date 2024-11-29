data modify storage tf2:lookup item set from entity @s item
execute store result score $_damage_ tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.attributes.damage.base
execute store result score $_selfDamage_ tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.projectile.explosion.selfDamage
execute store result score $_maxRamp_ tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.attributes.damage.maxRamp 100
execute unless data storage tf2:lookup item.components.minecraft:custom_data.attributes.damage.maxRamp run scoreboard players set $_maxRamp_ tf2.var 150
execute store result score $_temporalFalloff_ tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.attributes.damage.temporalFalloff
execute store result score $_rangeDependent_ tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.attributes.damage.uniform
execute store success score $_rangeDependent_ tf2.var if score $_rangeDependent_ tf2.var matches 0
data modify storage tf2:vars weapon_name set from storage tf2:lookup item.components.minecraft:custom_name
tag @s add tf2.delete
execute if entity @s[tag=!tf2.explosion] run return run function tf2:projectile/simple_damage
execute store result storage tf2:vars radius double 0.01905 run data get storage tf2:lookup item.components.minecraft:custom_data.projectile.explosion.radius
function tf2:projectile/explode with storage tf2:vars