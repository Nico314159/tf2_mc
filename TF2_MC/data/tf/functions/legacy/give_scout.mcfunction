clear @s
attribute @s minecraft:generic.max_health base set 25 
attribute @s minecraft:generic.movement_speed base set 0.133
attribute @s minecraft:generic.attack_damage base set 0
attribute @s minecraft:generic.attack_speed base set 2
title @s subtitle ""
scoreboard players set @s rightClicks 0
scoreboard players set @s maxHealth 25
scoreboard players set @s class 3
item replace entity @s hotbar.0 with minecraft:crossbow{Unbreakable:1,display:{Name:'[{"text":"Scattergun"}]'},HideFlags:4,Enchantments:[{id:"minecraft:multishot",lvl:3},{id:"minecraft:quick_charge",lvl:1}]} 1
item replace entity @s hotbar.1 with minecraft:bow{Unbreakable:1,display:{Name:'[{"text":"Pistol"}]'},HideFlags:4} 1
item replace entity @s hotbar.2 with minecraft:wooden_sword{Unbreakable:1,display:{Name:'[{"text":"Baseball Bat"}]',Lore:['[{"text":""}]','[{"text":"When in Main Hand: ","italic":false,"color":"gray"}]','[{"text":"7 Attack Damage","italic":false,"color":"dark_green"}]','[{"text":"2 Attack Speed","italic":false,"color":"dark_green"}]']},HideFlags:6,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:7,Operation:0,UUID:[I;1066893281,1056871661,1011260863,1582104923]}],Enchantments:[{id:"minecraft:knockback",lvl:2}]} 1
item replace entity @s inventory.13 with minecraft:arrow 48

effect give @s minecraft:instant_health 1 10 true
tag @s remove keep_ammo