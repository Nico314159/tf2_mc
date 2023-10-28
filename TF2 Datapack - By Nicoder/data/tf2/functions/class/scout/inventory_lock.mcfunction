item replace entity @s weapon.offhand with air
loot replace entity @s hotbar.0 loot tf2:class/scout/scattergun
execute store result score $_count_ tf2.var run clear @s crossbow{CustomModelData:31000} 0
execute unless score $_count_ tf2.var matches 1 run clear @s crossbow{CustomModelData:31000}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.0 loot tf2:class/scout/scattergun
loot replace entity @s hotbar.1 loot tf2:class/scout/pistol
execute store result score $_count_ tf2.var run clear @s crossbow{CustomModelData:32000} 0
execute unless score $_count_ tf2.var matches 1 run clear @s crossbow{CustomModelData:32000}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.1 loot tf2:class/scout/pistol
loot replace entity @s hotbar.2 loot tf2:class/scout/baseball_bat
execute store result score $_count_ tf2.var run clear @s snowball{CustomModelData:33000} 0
execute unless score $_count_ tf2.var matches 1 run clear @s snowball{CustomModelData:33000}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.2 loot tf2:class/scout/baseball_bat
loot replace entity @s armor.legs loot tf2:class/scout/_model
execute store result score $_count_ tf2.var run clear @s iron_leggings{Trim:{pattern:"tf2:scout"}} 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_leggings{Trim:{pattern:"tf2:scout"}}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.legs loot tf2:class/scout/_model
execute if entity @s[tag=tf2.can_double_jump] run function tf2:__private__/if_else/30