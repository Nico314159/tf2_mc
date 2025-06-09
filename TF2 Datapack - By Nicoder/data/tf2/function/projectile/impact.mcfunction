data modify storage tf2:lookup item set from entity @s item
execute store result score $_damage_ tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.attributes.damage.base
execute if data storage tf2:lookup item.components.minecraft:custom_data.attributes.damage.indirect unless entity @s[tag=!tf2.has_hit_wall,tag=!tf2.has_hit_entity] store result score $_damage_ tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.attributes.damage.indirect
execute store result score $_selfDamage_ tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.projectile.explosion.selfDamage
execute store result score $_maxRamp_ tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.attributes.damage.maxRamp 100
execute unless data storage tf2:lookup item.components.minecraft:custom_data.attributes.damage.maxRamp run scoreboard players set $_maxRamp_ tf2.var 150
execute store result score $_temporalFalloff_ tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.attributes.damage.temporalFalloff
execute store result score $_rangeDependent_ tf2.var run data get storage tf2:lookup item.components.minecraft:custom_data.attributes.damage.uniform
execute store success score $_rangeDependent_ tf2.var if score $_rangeDependent_ tf2.var matches 0
data modify storage tf2:vars weapon_name set from storage tf2:lookup item.components.minecraft:custom_name
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
tag @e remove tf2.search
execute as @e[type=#tf2:player_like] if score @s tf2.batch_number = $local tf2.batch_number unless entity @s[gamemode=spectator] run tag @s add tf2.batch
tag @e[tag=tf2.batch] add tf2.search
scoreboard players operation $temp tf2.team = @s tf2.team
execute as @e[type=#tf2:player_like,tag=tf2.search] unless score @s tf2.team = $temp tf2.team run tag @s add tf2.opponent
tag @s add tf2.delete
execute if entity @s[tag=!tf2.explosion] run return run function tf2:projectile/simple_damage
execute store result storage tf2:vars radius double 0.01905 run data get storage tf2:lookup item.components.minecraft:custom_data.projectile.explosion.radius
function tf2:projectile/explode with storage tf2:vars