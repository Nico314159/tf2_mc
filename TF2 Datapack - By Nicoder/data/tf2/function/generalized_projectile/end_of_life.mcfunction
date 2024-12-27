tag @s add tf2.delete
execute store result score $explode_after_lifetime tf2.var run data get entity @s item.components.minecraft:custom_data.projectile.explode_after_lifetime
execute unless score $explode_after_lifetime tf2.var matches 1.. run return 0
execute store result storage tf2:vars radius double 0.01905 run data get entity @s item.components.minecraft:custom_data.projectile.explosion.radius
function tf2:projectile/explode with storage tf2:vars