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
execute if score @s[tag=!tf2.in_disguise_menu,tag=!tf2.need_to_switch_away] tf2.current_slot matches 3 run function tf2:class/spy/disguise_menu
execute unless score @s tf2.current_slot matches 3 run tag @s remove tf2.need_to_switch_away
loot replace entity @s hotbar.3 loot tf2:class/spy/disguise_kit
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:13}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:13}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.3 loot tf2:class/spy/disguise_kit
loot replace entity @s weapon.offhand loot tf2:class/spy/invis_watch
execute store result score $_count_ tf2.var run clear @s *[custom_data~{key:14}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s *[custom_data~{key:14}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s weapon.offhand loot tf2:class/spy/invis_watch
clear @s *[minecraft:custom_data~{cloak:"uncloak"}]