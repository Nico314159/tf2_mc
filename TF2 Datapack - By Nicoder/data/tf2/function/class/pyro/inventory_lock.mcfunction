item replace entity @s weapon.offhand with air
loot replace entity @s hotbar.0 loot tf2:class/pyro/flamethrower
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:70}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:70}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.0 loot tf2:class/pyro/flamethrower
loot replace entity @s hotbar.1 loot tf2:class/pyro/shotgun
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:71}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:71}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.1 loot tf2:class/pyro/shotgun
loot replace entity @s hotbar.2 loot tf2:class/pyro/fire_axe
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:72}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:72}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.2 loot tf2:class/pyro/fire_axe
loot replace entity @s armor.legs loot tf2:class/pyro/leg_model
loot replace entity @s armor.chest loot tf2:class/pyro/chest_model
execute store result score $_count_ tf2.var run clear @s iron_leggings 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_leggings
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.legs loot tf2:class/pyro/leg_model
loot replace entity @s armor.chest loot tf2:class/pyro/chest_model
execute store result score $_count_ tf2.var run clear @s iron_chestplate 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_chestplate
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.chest loot tf2:class/pyro/chest_model
loot replace entity @s armor.head loot tf2:class/pyro/head
execute store result score $_count_ tf2.var run clear @s white_dye 0
execute unless score $_count_ tf2.var matches 1 run clear @s white_dye
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.head loot tf2:class/pyro/head