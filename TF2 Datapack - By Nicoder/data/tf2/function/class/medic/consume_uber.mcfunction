execute store result score $duration tf2.var run data get entity @s Inventory[{Slot:1b}].components.minecraft:custom_data.attributes.uber.last
execute store result score $drain_rate tf2.var run data get entity @s Inventory[{Slot:1b}].components.minecraft:custom_data.attributes.uber.build
scoreboard players operation $drain_rate tf2.var /= $duration tf2.var
scoreboard players operation @s[tag=tf2.uber_source] tf2.ubercharge -= $drain_rate tf2.var
tag @s[scores={tf2.ubercharge=..0}] remove tf2.uber_source