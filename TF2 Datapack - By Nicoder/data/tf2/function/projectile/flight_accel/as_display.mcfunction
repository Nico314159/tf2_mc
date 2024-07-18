execute store result score $velocity tf2.var run data get entity @s item.components.minecraft:custom_data.Motion[0] 1000
execute store result score $accel tf2.var run data get entity @s item.components.minecraft:custom_data.projectile.flight_accel[0] 1000
scoreboard players operation $velocity tf2.var += $accel tf2.var
execute store result entity @s item.components.minecraft:custom_data.Motion[0] double 0.001 run scoreboard players get $velocity tf2.var
execute store result score $velocity tf2.var run data get entity @s item.components.minecraft:custom_data.Motion[1] 1000
execute store result score $accel tf2.var run data get entity @s item.components.minecraft:custom_data.projectile.flight_accel[1] 1000
scoreboard players operation $velocity tf2.var += $accel tf2.var
execute store result entity @s item.components.minecraft:custom_data.Motion[1] double 0.001 run scoreboard players get $velocity tf2.var
execute store result score $velocity tf2.var run data get entity @s item.components.minecraft:custom_data.Motion[2] 1000
execute store result score $accel tf2.var run data get entity @s item.components.minecraft:custom_data.projectile.flight_accel[2] 1000
scoreboard players operation $velocity tf2.var += $accel tf2.var
execute store result entity @s item.components.minecraft:custom_data.Motion[2] double 0.001 run scoreboard players get $velocity tf2.var