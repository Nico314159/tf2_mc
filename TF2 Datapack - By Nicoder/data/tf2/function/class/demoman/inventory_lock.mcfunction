item replace entity @s weapon.offhand with air
loot replace entity @s hotbar.0 loot tf2:class/demoman/grenade_launcher
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:50}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:50}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.0 loot tf2:class/demoman/grenade_launcher
loot replace entity @s hotbar.1 loot tf2:class/demoman/stickybomb_launcher
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:51}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:51}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.1 loot tf2:class/demoman/stickybomb_launcher
loot replace entity @s hotbar.2 loot tf2:class/demoman/bottle
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:52}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:52}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.2 loot tf2:class/demoman/bottle
execute if score @s[predicate=tf2:ammo_in_clip] tf2.current_slot matches 1 run function tf2:__private__/if_else/3
loot replace entity @s armor.legs loot tf2:class/demoman/leg_model
execute store result score $_count_ tf2.var run clear @s iron_leggings 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_leggings
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.legs loot tf2:class/demoman/leg_model
loot replace entity @s armor.chest loot tf2:class/demoman/chest_model
execute store result score $_count_ tf2.var run clear @s iron_chestplate 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_chestplate
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.chest loot tf2:class/demoman/chest_model
loot replace entity @s armor.head loot tf2:class/demoman/head
execute store result score $_count_ tf2.var run clear @s white_dye[item_model="tf2:misc/head"] 0
execute unless score $_count_ tf2.var matches 1 run clear @s white_dye[item_model="tf2:misc/head"]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.head loot tf2:class/demoman/head