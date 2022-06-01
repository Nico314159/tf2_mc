clear @s
attribute @s minecraft:generic.movement_speed base set 0.107
attribute @s minecraft:generic.max_health base set 25 
attribute @s minecraft:generic.attack_damage base set 0
attribute @s minecraft:generic.attack_speed base set 3.65
title @s subtitle ""
scoreboard players set @s maxHealth 25
scoreboard players set @s rightClicks 0
scoreboard players set @s class 1
scoreboard players set @s cloak 600
item replace entity @s hotbar.0 with minecraft:bow{display:{Name:'[{"text":"Revolver","italic":true}]'},Enchantments:[{id:"minecraft:power",lvl:1}],Unbreakable:1,HideFlags:4} 1
item replace entity @s hotbar.1 with minecraft:stone_sword{display:{Name:'[{"text":"Butterfly Knife"}]'},Enchantments:[{id:"minecraft:sharpness",lvl:5}],Unbreakable:1,HideFlags:4,canBackstab:1b} 1
item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"Invis Watch"}]',Lore:['[{"text":"Right-click to become invisible","italic":false,"color":"#ebe2ca"}]','[{"text":"Holding other items will fully reveal you","italic":false,"color":"#ebe2ca"}]']},CustomModelData:301,Unbreakable:1,HideFlags:4} 1
item replace entity @s hotbar.3 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"Sapper","italic":false}]'},Unbreakable:1,HideFlags:4,CustomModelData:801} 1
item replace entity @s inventory.13 with minecraft:arrow 24

effect give @s minecraft:instant_health 1 10 true
tag @s remove keep_ammo