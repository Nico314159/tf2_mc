execute store result score $_count_ tf2.var run clear @s iron_leggings 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_leggings
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.legs loot tf2:class/spy/leg_model
execute store result score $_count_ tf2.var run clear @s iron_chestplate 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_chestplate
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.chest loot tf2:class/spy/chest_model
execute store result score $_count_ tf2.var run clear @s white_dye[item_model="tf2:misc/head"] 0
execute unless score $_count_ tf2.var matches 1 run clear @s white_dye[item_model="tf2:misc/head"]
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.head loot tf2:class/spy/head