execute unless predicate tf2:no_vehicle run return fail
data modify storage tf2:summon projectile.spawnX set value 0
data modify storage tf2:summon projectile.spawnY set value 0
data modify storage tf2:summon projectile.spawnZ set value 0
data modify storage tf2:summon projectile.owner set from entity @r UUID
data modify storage tf2:summon projectile.X set from entity @s item.components.minecraft:custom_data.Motion[0]
data modify storage tf2:summon projectile.Y set from entity @s item.components.minecraft:custom_data.Motion[1]
data modify storage tf2:summon projectile.Z set from entity @s item.components.minecraft:custom_data.Motion[2]
execute store result storage tf2:summon projectile.yaw float 1 run data get entity @s Rotation[0]
execute store result storage tf2:summon projectile.pitch float 1 run data get entity @s Rotation[1]
data modify storage tf2:summon projectile.CMD set from entity @s item.components.minecraft:custom_model_data
function tf2:projectile/init_arrow with storage tf2:summon projectile
execute as @n[type=arrow,tag=tf2.new] on passengers run kill @s
ride @s mount @n[type=arrow,tag=tf2.new]
tag @e remove tf2.new