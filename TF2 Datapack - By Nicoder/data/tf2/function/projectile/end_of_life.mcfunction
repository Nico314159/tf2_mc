tag @s add tf2.delete
execute store result score $explode_after_lifetime tf2.var run data get entity @s item.components.minecraft:custom_data.projectile.explode_after_lifetime
execute if score $explode_after_lifetime tf2.var matches 1.. run function tf2:projectile/impact