item replace entity @s weapon.offhand with air
loot replace entity @s hotbar.0 loot tf2:class/scout/scattergun
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:30}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:30}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.0 loot tf2:class/scout/scattergun
loot replace entity @s hotbar.1 loot tf2:class/scout/pistol
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:31}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:31}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.1 loot tf2:class/scout/pistol
loot replace entity @s hotbar.2 loot tf2:class/scout/baseball_bat
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:32}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:32}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.2 loot tf2:class/scout/baseball_bat
execute store result score $_count_ tf2.var run clear @s iron_leggings 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_leggings
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.legs loot tf2:class/scout/leg_model
execute store result score $_count_ tf2.var run clear @s iron_chestplate 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_chestplate
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.chest loot tf2:class/scout/chest_model
execute store result score $_count_ tf2.var run clear @s white_dye[item_model="tf2:misc/head"] 0
execute unless score $_count_ tf2.var matches 1 run function tf2:__private__/if_else/5