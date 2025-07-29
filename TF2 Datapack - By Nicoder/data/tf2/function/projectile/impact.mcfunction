tag @s add tf2.delete
scoreboard players operation $temp tf2.team = @s tf2.team
execute as @n[type=item_display,tag=tf2.hit_by_projectile,tag=tf2.projectile,tag=tf2.stuck] unless score @s tf2.team = $temp tf2.team if data entity @s item.components.minecraft:custom_data.projectile.explode_alt_fire run return run function tf2:projectile/fizzle
data modify storage tf2:lookup item set from entity @s item
execute store result score $_damage_ tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.attributes.damage.base
execute if data storage tf2:lookup item.components.minecraft:custom_data.attributes.damage.indirect unless entity @s[tag=!tf2.has_hit_wall,tag=!tf2.has_hit_entity] store result score $_damage_ tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.attributes.damage.indirect
execute store result score $_selfDamage_ tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.projectile.explosion.selfDamage
execute store result score $_maxRamp_ tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.attributes.damage.maxRamp 100
execute unless data storage tf2:lookup item.components.minecraft:custom_data.attributes.damage.maxRamp run scoreboard players set $_maxRamp_ tf2.var 150
execute store result score $_temporalFalloff_ tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.attributes.damage.temporalFalloff
execute store success score $_rangeDependent_ tf2.var unless predicate tf2:uniform_damage
data modify storage tf2:vars weapon_name set from storage tf2:lookup item.components.minecraft:custom_name
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e if score @s tf2.batch_number = $local tf2.batch_number unless entity @s[gamemode=spectator] run tag @s add tf2.same_batch
execute as @e[tag=tf2.same_batch] if score @s tf2.team = @s tf2.team unless score @s tf2.team = $temp tf2.team run tag @s add tf2.opponent
execute if entity @s[tag=!tf2.explosion] run return run function tf2:projectile/simple_damage
execute store result storage tf2:vars radius double 0.01905 run data get storage tf2:lookup item.components.minecraft:custom_data.projectile.explosion.radius
function tf2:projectile/explode with storage tf2:vars