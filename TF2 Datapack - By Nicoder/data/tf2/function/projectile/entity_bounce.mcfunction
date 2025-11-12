execute store result score $elasticity tf2.var run data get entity @s item.components.minecraft:custom_data.projectile.entity_collision.elasticity 1000
scoreboard players set __logic__0 tf2.var 0
execute unless score @s tf2.collision_x matches 0 run scoreboard players set __logic__0 tf2.var 1
execute unless score __logic__0 tf2.var matches 1 unless score @s tf2.collision_z matches 0 run scoreboard players set __logic__0 tf2.var 1
execute if score __logic__0 tf2.var matches 1 run function tf2:__private__/if_else/29
execute unless score @s tf2.collision_entity_y matches 0 run function tf2:__private__/if_else/31
execute unless score @s tf2.collision_entity_x matches 0 run scoreboard players operation @s tf2.mot_x *= -1 tf2.const
execute unless score @s tf2.collision_entity_y matches 0 run scoreboard players operation @s tf2.mot_y *= -1 tf2.const
execute unless score @s tf2.collision_entity_z matches 0 run scoreboard players operation @s tf2.mot_z *= -1 tf2.const
tag @e remove tf2.hit_by_projectile
tag @s add tf2.has_hit_entity