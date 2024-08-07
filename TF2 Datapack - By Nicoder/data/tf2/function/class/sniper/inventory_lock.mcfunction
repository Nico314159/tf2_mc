item replace entity @s armor.chest with air
loot replace entity @s hotbar.0 loot tf2:class/sniper/sniper_rifle
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:[2,0]}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:[2,0]}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.0 loot tf2:class/sniper/sniper_rifle
loot replace entity @s hotbar.1 loot tf2:class/sniper/smg
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:[2,1]}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:[2,1]}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.1 loot tf2:class/sniper/smg
loot replace entity @s hotbar.2 loot tf2:class/sniper/kukri
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:[2,2]}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:[2,2]}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.2 loot tf2:class/sniper/kukri
loot replace entity @s armor.legs loot tf2:class/sniper/_model
execute store result score $_count_ tf2.var run clear @s iron_leggings 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_leggings
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.legs loot tf2:class/sniper/_model
loot replace entity @s armor.head loot tf2:head
execute store result score $_count_ tf2.var run clear @s paper 0
execute unless score $_count_ tf2.var matches 1 run clear @s paper
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.head loot tf2:head