tag @s add tf2.delete
execute if entity @s[tag=!tf2.explosion] run return run function tf2:projectile/simple_damage
execute store result storage tf2:vars radius double 0.01905 run data get storage tf2:lookup item.components.minecraft:custom_data.projectile.explosion.radius
function tf2:projectile/explode with storage tf2:vars