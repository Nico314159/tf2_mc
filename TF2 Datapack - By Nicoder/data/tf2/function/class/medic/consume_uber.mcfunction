execute store result score $duration tf2.var run data get entity @s Inventory[{Slot:1b}].components.minecraft:custom_data.attributes.uber.last 100
execute store result score $drain_rate tf2.var run data get entity @s Inventory[{Slot:1b}].components.minecraft:custom_data.attributes.uber.build 400
scoreboard players operation $drain_rate tf2.var /= $duration tf2.var
scoreboard players operation @s[tag=tf2.uber_source] tf2.ubercharge -= $drain_rate tf2.var
scoreboard players operation @s[tag=tf2.uber_source] tf2.ubercharge > 0 tf2.const
execute if score @s tf2.ubercharge matches 1.. run return 1
execute if entity @s[tag=!tf2.uber_source] run return fail
tag @s remove tf2.uber_source
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air