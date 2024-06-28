execute store result score $fake_CMD tf2.var run data get entity @s Inventory[{Slot:2b}].components.minecraft:custom_model_data 10
scoreboard players operation $fake_CMD tf2.var += @s tf2.disguise.class
scoreboard players operation $fake_CMD tf2.var *= 10 tf2.const
scoreboard players add $fake_CMD tf2.var 3
scoreboard players operation $fake_CMD tf2.var *= 1000 tf2.const
scoreboard players operation $fake_CMD tf2.var += @s tf2.disguise.team
scoreboard players operation $fake_CMD tf2.var %= 1000000000 tf2.const
execute if score @s tf2.disguise.class matches 1 run scoreboard players operation $fake_CMD tf2.var %= 100000 tf2.const
item modify entity @s hotbar.2 {"function":"minecraft:set_custom_model_data","value":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"$fake_CMD"},"score":"tf2.var"}}