execute store result score $impact_if_first tf2.var run data get entity @s item.components.minecraft:custom_data.projectile.entity_collision.impact_if_first
scoreboard players set __if_else__ tf2.var 0
execute if score $impact_if_first tf2.var matches 1.. if entity @s[tag=!tf2.has_hit_wall,tag=!tf2.has_hit_entity] run function tf2:__private__/if_else/22
execute if score __if_else__ tf2.var matches 0 run function tf2:projectile/entity_bounce