execute store result score $velocity tf2.var run data get entity @s Motion[1] 1000
execute store result score $accel tf2.var on passengers run data get entity @s item.components.minecraft:custom_data.projectile.convection.factor 1000
scoreboard players operation $velocity tf2.var += $accel tf2.var
execute store result entity @s Motion[1] double 0.001 run scoreboard players get $velocity tf2.var