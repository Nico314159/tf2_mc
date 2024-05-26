loot replace entity @s hotbar.1 loot tf2:class/spy/sapper
scoreboard players operation $fake_CMD tf2.var = @s tf2.disguise.class
scoreboard players operation $fake_CMD tf2.var *= 10000 tf2.const
scoreboard players add $fake_CMD tf2.var 2000
scoreboard players operation $fake_CMD tf2.var += @s tf2.disguise.team
item modify entity @s hotbar.1 {"function":"minecraft:set_custom_model_data","value":{"type":"minecraft:score","target":{"type":"minecraft:fixed","name":"$fake_CMD"},"score":"tf2.var"}}