item replace entity @s weapon.offhand with air
loot replace entity @s hotbar.0 loot tf2:class/soldier/rocket_launcher
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:40}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:40}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.0 loot tf2:class/soldier/rocket_launcher
loot replace entity @s hotbar.1 loot tf2:class/soldier/shotgun
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:41}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:41}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.1 loot tf2:class/soldier/shotgun
loot replace entity @s hotbar.2 loot tf2:class/soldier/shovel
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:42}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:42}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.2 loot tf2:class/soldier/shovel
loot replace entity @s armor.legs loot tf2:class/soldier/leg_model
execute store result score $_count_ tf2.var run clear @s iron_leggings 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_leggings
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.legs loot tf2:class/soldier/leg_model
loot replace entity @s armor.chest loot tf2:class/soldier/chest_model
execute store result score $_count_ tf2.var run clear @s iron_chestplate 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_chestplate
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.chest loot tf2:class/soldier/chest_model
loot replace entity @s armor.head loot tf2:class/soldier/head
execute store result score $_count_ tf2.var run clear @s white_dye[item_model="tf2:misc/head"] 0
execute unless score $_count_ tf2.var matches 1 run clear @s white_dye[item_model="tf2:misc/head"]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.head loot tf2:class/soldier/head