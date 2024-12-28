execute store result storage tf2:vars radius double 0.01905 run data get entity @s item.components.minecraft:custom_data.projectile.explosion.radius
execute at @s run function tf2:projectile/explode with storage tf2:vars
tag @s add tf2.delete