item replace entity @s weapon.offhand with air
loot replace entity @s hotbar.0 loot tf2:class/soldier/rocket_launcher
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:[4,0]}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:[4,0]}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.0 loot tf2:class/soldier/rocket_launcher
loot replace entity @s hotbar.1 loot tf2:class/soldier/shotgun
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:[4,1]}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:[4,1]}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.1 loot tf2:class/soldier/shotgun
loot replace entity @s hotbar.2 loot tf2:class/soldier/shovel
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:[4,2]}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:[4,2]}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.2 loot tf2:class/soldier/shovel
loot replace entity @s armor.legs loot tf2:class/soldier/_model
execute store result score $_count_ tf2.var run clear @s iron_leggings 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_leggings
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.legs loot tf2:class/soldier/_model
loot replace entity @s armor.head loot tf2:head
execute store result score $_count_ tf2.var run clear @s paper 0
execute unless score $_count_ tf2.var matches 1 run clear @s paper
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.head loot tf2:head