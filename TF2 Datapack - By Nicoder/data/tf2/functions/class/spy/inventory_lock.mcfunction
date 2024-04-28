execute if score @s tf2.is_invisible matches 1.. run return run function tf2:class/spy/disable_attacking
item replace entity @s armor.chest with air
loot replace entity @s hotbar.0 loot tf2:class/spy/revolver
execute store result score $_count_ tf2.var run clear @s crossbow[custom_model_data=11000] 0
execute unless score $_count_ tf2.var matches 1 run clear @s crossbow[custom_model_data=11000]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.0 loot tf2:class/spy/revolver
loot replace entity @s hotbar.1 loot tf2:class/spy/sapper
execute store result score $_count_ tf2.var run clear @s clay_ball[custom_model_data=12000] 0
execute unless score $_count_ tf2.var matches 1 run clear @s clay_ball[custom_model_data=12000]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.1 loot tf2:class/spy/sapper
loot replace entity @s hotbar.2 loot tf2:class/spy/butterfly_knife
execute store result score $_count_ tf2.var run clear @s snowball[custom_model_data=13000] 0
execute unless score $_count_ tf2.var matches 1 run clear @s snowball[custom_model_data=13000]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.2 loot tf2:class/spy/butterfly_knife
scoreboard players set $exit_code tf2.var 0
execute if score @s tf2.current_slot matches 2 store result score $exit_code tf2.var run function tf2:class/spy/determine_backstab
loot replace entity @s hotbar.3 loot tf2:class/spy/disguise_kit
execute store result score $_count_ tf2.var run clear @s clay_ball[custom_model_data=14000] 0
execute unless score $_count_ tf2.var matches 1 run clear @s clay_ball[custom_model_data=14000]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.3 loot tf2:class/spy/disguise_kit
loot replace entity @s weapon.offhand loot tf2:class/spy/invis_watch
execute store result score $_count_ tf2.var run clear @s clay_ball[custom_model_data=15000] 0
execute unless score $_count_ tf2.var matches 1 run clear @s clay_ball[custom_model_data=15000]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s weapon.offhand loot tf2:class/spy/invis_watch
clear @s clay_ball[minecraft:custom_data~{cloak:"uncloak"}]
loot replace entity @s armor.legs loot tf2:class/spy/_model
execute store result score $_count_ tf2.var run clear @s iron_leggings 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_leggings
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.legs loot tf2:class/spy/_model
loot replace entity @s armor.head loot tf2:head
execute store result score $_count_ tf2.var run clear @s paper 0
execute unless score $_count_ tf2.var matches 1 run clear @s paper
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.head loot tf2:head