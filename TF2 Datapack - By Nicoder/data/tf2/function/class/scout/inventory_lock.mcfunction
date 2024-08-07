item replace entity @s weapon.offhand with air
loot replace entity @s hotbar.0 loot tf2:class/scout/scattergun
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:[3,0]}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:[3,0]}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.0 loot tf2:class/scout/scattergun
loot replace entity @s hotbar.1 loot tf2:class/scout/pistol
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:[3,1]}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:[3,1]}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.1 loot tf2:class/scout/pistol
loot replace entity @s hotbar.2 loot tf2:class/scout/baseball_bat
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:[3,2]}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:[3,2]}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.2 loot tf2:class/scout/baseball_bat
loot replace entity @s armor.legs loot tf2:class/scout/_model
execute store result score $_count_ tf2.var run clear @s iron_leggings 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_leggings
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.legs loot tf2:class/scout/_model
loot replace entity @s armor.head loot tf2:head
execute store result score $_count_ tf2.var run clear @s paper 0
execute unless score $_count_ tf2.var matches 1 run clear @s paper
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.head loot tf2:head
execute if entity @s[tag=tf2.can_double_jump] run function tf2:__private__/if_else/4