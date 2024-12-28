scoreboard players set @s tf2.age 0
scoreboard players operation @s tf2.team = $temp tf2.team
scoreboard players operation @s tf2.player.id = $temp tf2.player.id
scoreboard players operation @s tf2.batch_number = $local tf2.batch_number
execute store result score @s tf2.model_number run data get storage tf2:summon projectile.CMD
data modify entity @s billboard set from storage tf2:lookup item.components.minecraft:custom_data.projectile.billboard
data modify entity @s item.components.minecraft:custom_data.attributes set from storage tf2:lookup item.components.minecraft:custom_data.attributes
data modify entity @s item.components.minecraft:custom_data.projectile set from storage tf2:lookup item.components.minecraft:custom_data.projectile
execute store result score @s tf2.lifetime run function tf2:projectile/calc_lifetime
data modify entity @s item.components.minecraft:custom_name set from storage tf2:summon projectile.weapon_name
execute if score $explosion tf2.var matches 1.. run tag @s add tf2.explosion
execute if score $has_trail tf2.var matches 1.. run tag @s add tf2.has_trail
execute if score $gravity tf2.var matches 1.. run tag @s add tf2.gravity
execute if score $drag tf2.var matches 1.. run tag @s add tf2.drag
execute if score $ignore_env tf2.var matches 1.. run tag @s add tf2.ignore_env
execute if score $convection tf2.var matches 1.. run tag @s add tf2.convection
execute if score $unreflectable tf2.var matches 1.. run tag @s add tf2.unreflectable
execute if score $animated tf2.var matches 1.. run tag @s add tf2.animated
function tf2:projectile/get_pos
scoreboard players operation @s tf2.mot_x = $mot.mot_x tf2.var
execute store result score @s tf2.hitbox_x run data get storage tf2:lookup item.components.minecraft:custom_data.projectile.hitbox 19.050
scoreboard players operation @s tf2.mot_y = $mot.mot_y tf2.var
execute store result score @s tf2.hitbox_y run data get storage tf2:lookup item.components.minecraft:custom_data.projectile.hitbox 19.050
scoreboard players operation @s tf2.mot_z = $mot.mot_z tf2.var
execute store result score @s tf2.hitbox_z run data get storage tf2:lookup item.components.minecraft:custom_data.projectile.hitbox 19.050
execute if data storage tf2:lookup item.components.minecraft:custom_data.projectile.forces.torque run function tf2:__private__/if_else/14
tag @s remove tf2.new