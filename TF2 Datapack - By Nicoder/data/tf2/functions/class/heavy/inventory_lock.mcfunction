loot replace entity @s hotbar.0 loot tf2:class/heavy/minigun
execute store result score $_count_ tf2.var run clear @s crossbow{CustomModelData:61000} 0
execute unless score $_count_ tf2.var matches 1 run clear @s crossbow{CustomModelData:61000}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.0 loot tf2:class/heavy/minigun
loot replace entity @s hotbar.1 loot tf2:class/heavy/shotgun
execute store result score $_count_ tf2.var run clear @s crossbow{CustomModelData:62000} 0
execute unless score $_count_ tf2.var matches 1 run clear @s crossbow{CustomModelData:62000}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.1 loot tf2:class/heavy/shotgun
loot replace entity @s hotbar.2 loot tf2:class/heavy/right_fist
execute store result score $_count_ tf2.var run clear @s snowball{CustomModelData:63000} 0
execute unless score $_count_ tf2.var matches 1 run clear @s snowball{CustomModelData:63000}
execute unless score $_count_ tf2.var matches 1 run loot replace entity @s hotbar.2 loot tf2:class/heavy/right_fist
scoreboard players set __if_else__ tf2.var 0
execute if score @s tf2.current_slot matches 2 run function tf2:__private__/if_else/25
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/26