scoreboard players operation $temp tf2.team = @s tf2.team
scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute store result score $input_pitch retina.__variable__ run data get entity @s Rotation[1] 10
execute store result score $input_yaw retina.__variable__ run data get entity @s Rotation[0] 10
function retina:math/gimbal_to_vec
data modify storage tf2:summon projectile set value {X:0.0,Y:0.0,Z:0.0,yaw:0.0,pitch:0.0,spawnX:0.0,spawnY:0.0,spawnZ:0.0}
execute store result storage tf2:summon projectile.speed double 0.01905 run data get entity @s SelectedItem.components.minecraft:custom_data.projectile.speed
execute store result storage tf2:summon projectile.speed double 0.00005 run data get storage tf2:summon projectile.speed 1000
execute store result storage tf2:summon projectile.speed double 0.0000020833 run data get storage tf2:summon projectile.speed 1000
function tf2:__private__/anonymous/6 with storage tf2:summon projectile
execute store result storage tf2:summon projectile.yaw double 0.1 run scoreboard players get $input_yaw retina.__variable__
execute store result storage tf2:summon projectile.pitch double 0.1 run scoreboard players get $input_pitch retina.__variable__
data modify storage tf2:summon projectile.weapon set from entity @s SelectedItem
data modify storage tf2:summon projectile.spawnX set from storage tf2:summon projectile.weapon.components.minecraft:custom_data.projectile.spawn[0]
data modify storage tf2:summon projectile.spawnY set from storage tf2:summon projectile.weapon.components.minecraft:custom_data.projectile.spawn[1]
data modify storage tf2:summon projectile.spawnZ set from storage tf2:summon projectile.weapon.components.minecraft:custom_data.projectile.spawn[2]
data modify storage tf2:summon projectile.weapon_name set from storage tf2:summon projectile.weapon.components.minecraft:custom_name
data modify storage tf2:summon projectile.CMD set from storage tf2:summon projectile.weapon.components.minecraft:custom_model_data
data modify storage tf2:summon projectile.owner set from entity @s UUID
execute store result score $explosive tf2.var run data get storage tf2:summon projectile.weapon.components.minecraft:custom_data.projectile.explosion
execute store result score $has_trail tf2.var run data get storage tf2:summon projectile.weapon.components.minecraft:custom_data.projectile.has_trail
execute at @s anchored eyes run function tf2:__private__/anonymous/7 with storage tf2:summon projectile
execute as @e[type=item_display,tag=tf2.new,tag=tf2.projectile,limit=1,sort=nearest] run function tf2:__private__/anonymous/8
execute as @e[type=arrow,tag=tf2.new,tag=tf2.projectile,limit=1,sort=nearest] run function tf2:__private__/anonymous/9