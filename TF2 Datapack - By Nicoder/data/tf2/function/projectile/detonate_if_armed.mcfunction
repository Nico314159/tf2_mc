execute store result score $arm_time tf2.var run data get entity @s item.components.minecraft:custom_data.projectile.arm_time 20
execute if score @s tf2.age < $arm_time tf2.var run return run function tf2:projectile/fizzle
function tf2:projectile/impact