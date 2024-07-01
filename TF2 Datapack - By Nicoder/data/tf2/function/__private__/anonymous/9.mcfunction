team join player_motion.no_collide
scoreboard players set @s tf2.age 0
scoreboard players operation @s tf2.team = $temp tf2.team
scoreboard players operation @s tf2.batch_number = $local tf2.batch_number
execute on origin run tag @s add tf2.origin
execute on passengers run data modify entity @s item.components.minecraft:custom_data.attributes set from entity @a[tag=tf2.origin,limit=1] SelectedItem.components.minecraft:custom_data.attributes
execute on passengers run data modify entity @s item.components.minecraft:custom_data.projectile set from entity @a[tag=tf2.origin,limit=1] SelectedItem.components.minecraft:custom_data.projectile
execute on origin run tag @s remove tf2.origin
execute if score $explosive tf2.var matches 1.. run tag @s add tf2.explosive
execute if score $has_trail tf2.var matches 1.. run tag @s add tf2.has_trail
execute if score $drag tf2.var matches 1.. run tag @s add tf2.drag
execute if score $ignore_env tf2.var matches 1.. run tag @s add tf2.ignore_env
execute if data storage tf2:summon projectile.weapon.components.minecraft:custom_data.projectile.lifetime store result score @s tf2.lifetime run data get storage tf2:summon projectile.weapon.components.minecraft:custom_data.projectile.lifetime
execute if data storage tf2:summon projectile.weapon.components.minecraft:custom_data.projectile.lifetime run tag @s add tf2.visual
tag @s remove tf2.new