scoreboard players set @s tf2.collision 0
scoreboard players set @s tf2.collision_entity 0
execute unless score @s tf2.collision_x matches 0 run scoreboard players set @s tf2.collision 1
execute unless score @s tf2.collision_entity_x matches 0 run scoreboard players set @s tf2.collision_entity 1
execute unless score @s tf2.collision_y matches 0 run scoreboard players set @s tf2.collision 1
execute unless score @s tf2.collision_entity_y matches 0 run scoreboard players set @s tf2.collision_entity 1
execute unless score @s tf2.collision_z matches 0 run scoreboard players set @s tf2.collision 1
execute unless score @s tf2.collision_entity_z matches 0 run scoreboard players set @s tf2.collision_entity 1
scoreboard players set __logic__0 tf2.var 0
execute if score @s tf2.halt matches 0 run scoreboard players set __logic__0 tf2.var 1
execute unless score __logic__0 tf2.var matches 1 if score @s tf2.collision_x matches 0 run scoreboard players set __logic__0 tf2.var 1
execute if score __logic__0 tf2.var matches 1 run scoreboard players operation @s tf2.x += $mot.motion_x tf2.var
execute store result storage tf2:motion pos.x double 0.001 run scoreboard players get @s tf2.x
scoreboard players operation @s tf2.mot_x *= $mot.sign_x tf2.var
scoreboard players set __logic__0 tf2.var 0
execute if score @s tf2.halt matches 0 run scoreboard players set __logic__0 tf2.var 1
execute unless score __logic__0 tf2.var matches 1 if score @s tf2.collision_y matches 0 run scoreboard players set __logic__0 tf2.var 1
execute if score __logic__0 tf2.var matches 1 run scoreboard players operation @s tf2.y += $mot.motion_y tf2.var
execute store result storage tf2:motion pos.y double 0.001 run scoreboard players get @s tf2.y
scoreboard players operation @s tf2.mot_y *= $mot.sign_y tf2.var
scoreboard players set __logic__0 tf2.var 0
execute if score @s tf2.halt matches 0 run scoreboard players set __logic__0 tf2.var 1
execute unless score __logic__0 tf2.var matches 1 if score @s tf2.collision_z matches 0 run scoreboard players set __logic__0 tf2.var 1
execute if score __logic__0 tf2.var matches 1 run scoreboard players operation @s tf2.z += $mot.motion_z tf2.var
execute store result storage tf2:motion pos.z double 0.001 run scoreboard players get @s tf2.z
scoreboard players operation @s tf2.mot_z *= $mot.sign_z tf2.var
function tf2:motion/final_position with storage tf2:motion pos