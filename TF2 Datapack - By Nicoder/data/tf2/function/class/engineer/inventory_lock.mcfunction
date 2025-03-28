item replace entity @s weapon.offhand with air
loot replace entity @s hotbar.0 loot tf2:class/engineer/shotgun
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:80}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:80}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.0 loot tf2:class/engineer/shotgun
loot replace entity @s hotbar.1 loot tf2:class/engineer/pistol
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:81}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:81}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.1 loot tf2:class/engineer/pistol
loot replace entity @s hotbar.2 loot tf2:class/engineer/wrench
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:82}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:82}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.2 loot tf2:class/engineer/wrench
loot replace entity @s hotbar.3 loot tf2:class/engineer/construction_pda
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:83}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:83}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.3 loot tf2:class/engineer/construction_pda
loot replace entity @s hotbar.4 loot tf2:class/engineer/destruction_pda
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:84}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:84}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.4 loot tf2:class/engineer/destruction_pda
loot replace entity @s armor.legs loot tf2:class/engineer/leg_model
execute store result score $_count_ tf2.var run clear @s iron_leggings 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_leggings
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.legs loot tf2:class/engineer/leg_model
loot replace entity @s armor.chest loot tf2:class/engineer/chest_model
execute store result score $_count_ tf2.var run clear @s iron_chestplate 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_chestplate
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.chest loot tf2:class/engineer/chest_model
loot replace entity @s armor.head loot tf2:class/engineer/head
execute store result score $_count_ tf2.var run clear @s white_dye 0
execute unless score $_count_ tf2.var matches 1 run clear @s white_dye
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.head loot tf2:class/engineer/head