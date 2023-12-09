loot replace entity @s hotbar.0 loot tf2:class/heavy/minigun_spinning
execute store result score $_count_ tf2.var run clear @s crossbow{CustomModelData:61001,kind:"real"} 0
execute unless score $_count_ tf2.var matches 1 run clear @s crossbow{CustomModelData:61001,kind:"real"}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.0 loot tf2:class/heavy/minigun_spinning
loot replace entity @s weapon.offhand loot tf2:class/heavy/minigun_decoy
execute store result score $_count_ tf2.var run clear @s crossbow{CustomModelData:61000,kind:"fake"} 0
execute unless score $_count_ tf2.var matches 1 run clear @s crossbow{CustomModelData:61000,kind:"fake"}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s weapon.offhand loot tf2:class/heavy/minigun_decoy