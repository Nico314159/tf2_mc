execute store result score $merge_CMD tf2.var run data get entity @s Inventory[{Slot:0b}].components.minecraft:custom_model_data
scoreboard players operation $world_CMD tf2.var = @s tf2.disguise.class
scoreboard players operation $world_CMD tf2.var *= 5 tf2.const
scoreboard players add $world_CMD tf2.var 0
scoreboard players operation $world_CMD tf2.var *= 10 tf2.const
scoreboard players operation $world_CMD tf2.var *= 3 tf2.const
scoreboard players operation $world_CMD tf2.var += @s tf2.disguise.team
scoreboard players operation $world_CMD tf2.var *= 5 tf2.const
scoreboard players operation $merge_CMD tf2.var *= 7500 tf2.const
scoreboard players operation $merge_CMD tf2.var += $world_CMD tf2.var
item modify entity @s hotbar.0 {"function":"minecraft:set_custom_model_data","value":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"$merge_CMD"},"score":"tf2.var"}}
scoreboard players add $merge_CMD tf2.var 3375000
item modify entity @s hotbar.3 {"function":"minecraft:set_custom_model_data","value":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"$merge_CMD"},"score":"tf2.var"}}