execute store result score $_damage_ tf2.var run data get entity @s item.components.minecraft:custom_data.attributes.damage.base
execute store result score $_selfDamage_ tf2.var run data get entity @s item.components.minecraft:custom_data.projectile.explosion.selfDamage
execute store result score $_maxRamp_ tf2.var run data get entity @s item.components.minecraft:custom_data.attributes.damage.maxRamp 100
execute unless data entity @s item.components.minecraft:custom_data.attributes.damage.maxRamp run scoreboard players set $_maxRamp_ tf2.var 150
execute store result score $_rangeDependent_ tf2.var run data get entity @s item.components.minecraft:custom_data.attributes.damage.uniform
execute store success score $_rangeDependent_ tf2.var if score $_rangeDependent_ tf2.var matches 0