execute store result score $elasticity tf2.var run data get entity @s item.components.minecraft:custom_data.projectile.entity_collision.elasticity -1000
scoreboard players operation @s tf2.mot_x *= $elasticity tf2.var
scoreboard players operation @s tf2.mot_x /= 1000 tf2.const
scoreboard players operation @s tf2.mot_z *= $elasticity tf2.var
scoreboard players operation @s tf2.mot_z /= 1000 tf2.const
tag @e remove tf2.hit_by_projectile
tag @s add tf2.has_hit_entity