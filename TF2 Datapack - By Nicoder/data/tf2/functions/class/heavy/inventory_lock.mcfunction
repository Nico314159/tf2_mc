loot replace entity @s hotbar.1 loot tf2:class/heavy/shotgun
execute store result score $_count_ tf2.var run clear @s crossbow{CustomModelData:62000} 0
execute unless score $_count_ tf2.var matches 1 run clear @s crossbow{CustomModelData:62000}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.1 loot tf2:class/heavy/shotgun
loot replace entity @s hotbar.2 loot tf2:class/heavy/fists
execute store result score $_count_ tf2.var run clear @s snowball{CustomModelData:63000} 0
execute unless score $_count_ tf2.var matches 1 run clear @s snowball{CustomModelData:63000}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.2 loot tf2:class/heavy/fists