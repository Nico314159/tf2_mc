loot replace entity @s hotbar.1 loot tf2:class/heavy/shotgun
execute store result score $_count_ tf2.var run clear @s crossbow{CustomModelData:62000} 0
execute unless score $_count_ tf2.var matches 1 run clear @s crossbow{CustomModelData:62000}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.1 loot tf2:class/heavy/shotgun
loot replace entity @s hotbar.2 loot tf2:class/heavy/right_fist
execute store result score $_count_ tf2.var run clear @s snowball{CustomModelData:63000} 0
execute unless score $_count_ tf2.var matches 1 run clear @s snowball{CustomModelData:63000}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.2 loot tf2:class/heavy/right_fist
loot replace entity @s armor.legs loot tf2:class/heavy/_model
execute store result score $_count_ tf2.var run clear @s iron_leggings{Trim:{pattern:"tf2:heavy"}} 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_leggings{Trim:{pattern:"tf2:heavy"}}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.legs loot tf2:class/heavy/_model
scoreboard players set __if_else__ tf2.var 0
execute if score @s tf2.current_slot matches 2 run function tf2:__private__/if_else/26
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/27
loot replace entity @s armor.legs loot tf2:class/heavy/_model
execute store result score $_count_ tf2.var run clear @s iron_leggings{Trim:{pattern:"tf2:heavy"}} 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_leggings{Trim:{pattern:"tf2:heavy"}}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s armor.legs loot tf2:class/heavy/_model
execute store result score $_crossbow_id_ tf2.var run data get entity @s Inventory[-1].tag.CustomModelData 0.001
scoreboard players set __if_else__ tf2.var 0
execute if predicate tf2:class/heavy/is_revving if score $_crossbow_id_ tf2.var matches 61 run function tf2:__private__/if_else/28
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/29