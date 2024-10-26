execute if score @s tf2.is_invisible matches 1.. run return run function tf2:class/spy/disable_attacking
attribute @s[tag=!tf2.disguised] minecraft:movement_speed modifier remove tf2:match_disguise_speed
item replace entity @s armor.chest with air
loot replace entity @s hotbar.0 loot tf2:class/spy/revolver
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:10}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:10}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.0 loot tf2:class/spy/revolver
loot replace entity @s hotbar.1 loot tf2:class/spy/sapper
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:11}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:11}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.1 loot tf2:class/spy/sapper
loot replace entity @s hotbar.2 loot tf2:class/spy/butterfly_knife
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:12}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:12}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.2 loot tf2:class/spy/butterfly_knife
execute if score @s tf2.current_slot matches 2 run function tf2:class/spy/determine_backstab
loot replace entity @s hotbar.3 loot tf2:class/spy/disguise_kit
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:13}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:13}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.3 loot tf2:class/spy/disguise_kit
loot replace entity @s weapon.offhand loot tf2:class/spy/invis_watch
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:14}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:14}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s weapon.offhand loot tf2:class/spy/invis_watch
clear @s *[minecraft:custom_data~{cloak:"uncloak"}]
loot replace entity @s armor.legs loot tf2:class/spy/leg_model
execute store result score $_count_ tf2.var run clear @s iron_leggings 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_leggings
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.legs loot tf2:class/spy/leg_model
loot replace entity @s armor.chest loot tf2:class/spy/chest_model
execute store result score $_count_ tf2.var run clear @s iron_chestplate 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_chestplate
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.chest loot tf2:class/spy/chest_model
scoreboard players set @s tf2.model_number 10
scoreboard players operation @s tf2.model_number += @s tf2.team
loot replace entity @s armor.head loot tf2:head
execute store result score $_count_ tf2.var run clear @s paper 0
execute unless score $_count_ tf2.var matches 1 run clear @s paper
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.head loot tf2:head