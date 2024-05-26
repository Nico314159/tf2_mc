loot replace entity @s hotbar.2 loot tf2:class/spy/butterfly_knife
scoreboard players operation $fake_CMD tf2.var = @s tf2.disguise.class
scoreboard players operation $fake_CMD tf2.var *= 10000 tf2.const
scoreboard players add $fake_CMD tf2.var 3000
scoreboard players operation $fake_CMD tf2.var += @s tf2.disguise.team
item modify entity @s hotbar.2 {"function":"minecraft:set_custom_model_data","value":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"$fake_CMD"},"score":"tf2.var"}}