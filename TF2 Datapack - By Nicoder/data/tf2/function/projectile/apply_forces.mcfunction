data modify storage tf2:forces {} merge from entity @s item.components.minecraft:custom_data.projectile.forces
execute store result score $gravity tf2.var run data get storage tf2:forces gravity 1000
scoreboard players operation @s tf2.mot_y -= $gravity tf2.var
scoreboard players set $friction tf2.var 1000
execute if data storage tf2:forces drag store result score $friction tf2.var run data get storage tf2:forces drag 1000
execute if score @s tf2.collision matches 1.. if data storage tf2:forces collision_friction run function tf2:__private__/if_else/17
scoreboard players operation @s tf2.mot_x *= $friction tf2.var
scoreboard players operation @s tf2.mot_x /= 1000 tf2.const
scoreboard players operation @s tf2.mot_y *= $friction tf2.var
scoreboard players operation @s tf2.mot_y /= 1000 tf2.const
scoreboard players operation @s tf2.mot_z *= $friction tf2.var
scoreboard players operation @s tf2.mot_z /= 1000 tf2.const
scoreboard players set @s[scores={tf2.collision_y=-1}] tf2.mot_y 0