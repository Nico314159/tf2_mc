item replace entity @s armor.chest with air
loot replace entity @s hotbar.0 loot tf2:class/sniper/sniper_rifle
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:20}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:20}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.0 loot tf2:class/sniper/sniper_rifle
loot replace entity @s hotbar.1 loot tf2:class/sniper/smg
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:21}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:21}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.1 loot tf2:class/sniper/smg
loot replace entity @s hotbar.2 loot tf2:class/sniper/kukri
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:22}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:22}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.2 loot tf2:class/sniper/kukri
execute store result score $_count_ tf2.var run clear @s iron_leggings 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_leggings
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.legs loot tf2:class/sniper/leg_model
execute store result score $_count_ tf2.var run clear @s iron_chestplate 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_chestplate
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.chest loot tf2:class/sniper/chest_model
execute store result score $_count_ tf2.var run clear @s white_dye[item_model="tf2:misc/head"] 0
execute unless score $_count_ tf2.var matches 1 run clear @s white_dye[item_model="tf2:misc/head"]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.head loot tf2:class/sniper/head