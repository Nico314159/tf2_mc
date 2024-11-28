execute store result score $elasticity tf2.var run data get entity @s item.components.minecraft:custom_data.projectile.block_collide.elasticity -1000
scoreboard players set __logic__0 tf2.var 0
execute unless score @s tf2.collision_x matches 0 run scoreboard players set __logic__0 tf2.var 1
execute unless score __logic__0 tf2.var matches 1 unless score @s tf2.collision_z matches 0 run scoreboard players set __logic__0 tf2.var 1
execute if score __logic__0 tf2.var matches 1 run function tf2:__private__/if_else/17
tag @s[scores={tf2.collision=1}] add tf2.has_hit_wall
execute unless score @s tf2.collision_x matches 0 run scoreboard players operation @s tf2.mot_x *= -1 tf2.const
execute unless score @s tf2.collision_y matches 0 run scoreboard players operation @s tf2.mot_y *= -1 tf2.const
execute unless score @s tf2.collision_z matches 0 run scoreboard players operation @s tf2.mot_z *= -1 tf2.const
tag @s add tf2.has_hit_wall