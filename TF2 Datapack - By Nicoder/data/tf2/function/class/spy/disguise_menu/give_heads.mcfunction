loot replace entity @s hotbar.0 loot tf2:class/spy/disguise/sniper
loot replace entity @s hotbar.1 loot tf2:class/spy/disguise/scout
loot replace entity @s hotbar.2 loot tf2:class/spy/disguise/heavy
loot replace entity @s hotbar.3 loot tf2:class/spy/disguise/soldier
loot replace entity @s hotbar.4 loot tf2:class/spy/disguise/spy
loot replace entity @s hotbar.5 loot tf2:class/spy/disguise/pyro
execute store result score $_count_ tf2.var run clear @s paper[custom_data~{disguise:true}] 0
execute if score $_count_ tf2.var matches 6 run return 1
clear @s paper[custom_data~{disguise:true}]
function tf2:class/spy/disguise_menu/give_heads