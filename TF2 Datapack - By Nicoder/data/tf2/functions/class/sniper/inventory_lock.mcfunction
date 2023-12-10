item replace entity @s armor.chest with air
loot replace entity @s hotbar.1 loot tf2:class/sniper/smg
execute store result score $_count_ tf2.var run clear @s crossbow{CustomModelData:22000} 0
execute unless score $_count_ tf2.var matches 1 run clear @s crossbow{CustomModelData:22000}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.1 loot tf2:class/sniper/smg
loot replace entity @s hotbar.2 loot tf2:class/sniper/kukri
execute store result score $_count_ tf2.var run clear @s snowball{CustomModelData:23000} 0
execute unless score $_count_ tf2.var matches 1 run clear @s snowball{CustomModelData:23000}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.2 loot tf2:class/sniper/kukri
loot replace entity @s armor.legs loot tf2:class/sniper/_model
execute store result score $_count_ tf2.var run clear @s iron_leggings{Trim:{pattern:"tf2:sniper"}} 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_leggings{Trim:{pattern:"tf2:sniper"}}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.legs loot tf2:class/sniper/_model
execute store result score $_crossbow_id_ tf2.var run data get entity @s Inventory[-1].tag.CustomModelData 0.001
execute if predicate tf2:class/sniper/holding_scope if score $_crossbow_id_ tf2.var matches 21 if score @s tf2.attack_delay matches ..0 run return run function tf2:__private__/anonymous/2
loot replace entity @s hotbar.0 loot tf2:class/sniper/sniper_rifle
execute store result score $_count_ tf2.var run clear @s crossbow{CustomModelData:21000} 0
execute unless score $_count_ tf2.var matches 1 run clear @s crossbow{CustomModelData:21000}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.0 loot tf2:class/sniper/sniper_rifle
clear @s spyglass