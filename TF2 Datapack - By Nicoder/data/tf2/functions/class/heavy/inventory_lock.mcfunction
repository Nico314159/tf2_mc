loot replace entity @s hotbar.1 loot tf2:class/heavy/shotgun
execute store result score $_count_ tf2.var run clear @s crossbow[custom_model_data=62000] 0
execute unless score $_count_ tf2.var matches 1 run clear @s crossbow[custom_model_data=62000]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.1 loot tf2:class/heavy/shotgun
loot replace entity @s hotbar.2 loot tf2:class/heavy/right_fist
execute store result score $_count_ tf2.var run clear @s snowball[custom_model_data=63000] 0
execute unless score $_count_ tf2.var matches 1 run clear @s snowball[custom_model_data=63000]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.2 loot tf2:class/heavy/right_fist
loot replace entity @s armor.legs loot tf2:class/heavy/_model
execute store result score $_count_ tf2.var run clear @s iron_leggings 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_leggings
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.legs loot tf2:class/heavy/_model
scoreboard players set __if_else__ tf2.var 0
execute if score @s tf2.current_slot matches 2 run function tf2:__private__/if_else/3
execute if score __if_else__ tf2.var matches 0 run clear @s clay_ball[custom_model_data=63000]
execute store result score $_crossbow_id_ tf2.var run data get entity @s Inventory[-1].components.minecraft:custom_model_data 0.001
execute if predicate tf2:class/heavy/is_revving if score $_crossbow_id_ tf2.var matches 61 run return run function tf2:__private__/anonymous/1
loot replace entity @s hotbar.0 loot tf2:class/heavy/minigun_decoy
execute store result score $_count_ tf2.var run clear @s crossbow[custom_model_data=61000,custom_data={kind:"fake"}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s crossbow[custom_model_data=61000,custom_data={kind:"fake"}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.0 loot tf2:class/heavy/minigun_decoy
execute unless score @s tf2.current_slot matches 0 run return run clear @s crossbow[custom_data={kind:"real"}]
loot replace entity @s weapon.offhand loot tf2:class/heavy/minigun_spinning
execute store result score $_count_ tf2.var run clear @s crossbow[custom_model_data=61001,custom_data={kind:"real"}] 0
execute unless score $_count_ tf2.var matches 1 run clear @s crossbow[custom_model_data=61001,custom_data={kind:"real"}]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s weapon.offhand loot tf2:class/heavy/minigun_spinning