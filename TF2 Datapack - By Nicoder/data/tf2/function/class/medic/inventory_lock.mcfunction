item replace entity @s weapon.offhand with air
loot replace entity @s hotbar.0 loot tf2:class/medic/syringe_gun
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:[9,0]}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:[9,0]}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.0 loot tf2:class/medic/syringe_gun
loot replace entity @s hotbar.1 loot tf2:class/medic/medigun
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:[9,1]}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:[9,1]}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.1 loot tf2:class/medic/medigun
loot replace entity @s hotbar.2 loot tf2:class/medic/bonesaw
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:[9,2]}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:[9,2]}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.2 loot tf2:class/medic/bonesaw
loot replace entity @s armor.legs loot tf2:class/medic/_model
execute store result score $_count_ tf2.var run clear @s iron_leggings 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_leggings
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.legs loot tf2:class/medic/_model
loot replace entity @s armor.head loot tf2:head
execute store result score $_count_ tf2.var run clear @s paper 0
execute unless score $_count_ tf2.var matches 1 run clear @s paper
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.head loot tf2:head