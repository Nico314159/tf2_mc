loot replace entity @s hotbar.1 loot tf2:class/sniper/smg
execute store result score $_count_ tf2.var run clear @s crossbow{CustomModelData:23000} 0
execute unless score $_count_ tf2.var matches 1 run clear @s crossbow{CustomModelData:23000}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.1 loot tf2:class/sniper/smg
loot replace entity @s hotbar.2 loot tf2:class/sniper/kukri
execute store result score $_count_ tf2.var run clear @s snowball{CustomModelData:23000} 0
execute unless score $_count_ tf2.var matches 1 run clear @s snowball{CustomModelData:23000}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.2 loot tf2:class/sniper/kukri
execute store result score $_crossbow_id_ tf2.var run data get entity @s Inventory[-1].tag.CustomModelData 0.001
execute if predicate tf2:class/sniper/holding_scope if score $_crossbow_id_ tf2.var matches 21 run item modify entity @s weapon.offhand tf2:load_crossbow
execute if predicate tf2:class/sniper/holding_scope if score $_crossbow_id_ tf2.var matches 21 run return 0
loot replace entity @s hotbar.0 loot tf2:class/sniper/sniper_rifle
execute store result score $_count_ tf2.var run clear @s crossbow{CustomModelData:21000} 0
execute unless score $_count_ tf2.var matches 1 run clear @s crossbow{CustomModelData:21000}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.0 loot tf2:class/sniper/sniper_rifle
loot replace entity @s weapon.offhand loot tf2:class/sniper/sniper_rifle_scope
execute store result score $_count_ tf2.var run clear @s spyglass{CustomModelData:21000} 0
execute unless score $_count_ tf2.var matches 1 run clear @s spyglass{CustomModelData:21000}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s weapon.offhand loot tf2:class/sniper/sniper_rifle_scope