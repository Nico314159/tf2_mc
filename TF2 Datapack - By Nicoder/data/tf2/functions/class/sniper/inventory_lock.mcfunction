loot replace entity @s hotbar.2 loot tf2:class/sniper/kukri
execute store result score $_count_ tf2.var run clear @s snowball{CustomModelData:23000} 0
execute unless score $_count_ tf2.var matches 1 run clear @s snowball{CustomModelData:23000}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.2 loot tf2:class/sniper/kukri