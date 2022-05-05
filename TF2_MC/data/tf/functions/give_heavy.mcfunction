clear @s
attribute @s minecraft:generic.max_health base set 60
attribute @s minecraft:generic.movement_speed base set 0.075
attribute @s minecraft:generic.attack_damage base set 13
attribute @s minecraft:generic.attack_speed base set 1.25

title @s subtitle ""
scoreboard players set @s rightClicks 0
scoreboard players set @s maxHealth 60
scoreboard players set @s class 6
scoreboard players set @s secondaryClip 6
scoreboard players set @s secondaryAmmo 32

item replace entity @s hotbar.0 with minecraft:crossbow{display:{Name:'[{"text":"Minigun"}]'},Enchantments:[{id:"minecraft:quick_charge",lvl:5}],Unbreakable:1,HideFlags:6,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-1,Operation:2,UUID:[I;1019132911,1003469878,1084967286,1671151983]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.25,Operation:2,UUID:[I;1019132911,1003469878,1084967286,1671151983]}]} 1

item replace entity @s hotbar.1 with minecraft:crossbow{display:{Name:'[{"text":"Shotgun"}]'},Enchantments:[{id:"minecraft:multishot",lvl:3},{id:"minecraft:power",lvl:1}],Unbreakable:1,HideFlags:6,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-1,Operation:2,UUID:[I;1029959365,1020243770,1012934280,1841497472]}]} 1

item replace entity @s hotbar.6 with minecraft:tipped_arrow{CustomPotionColor:13421772,display:{Name:'{"text":"Arrow"}'}} 64
item replace entity @s hotbar.7 with minecraft:tipped_arrow{CustomPotionColor:13421772,display:{Name:'{"text":"Arrow"}'}} 64
item replace entity @s hotbar.8 with minecraft:tipped_arrow{CustomPotionColor:13421772,display:{Name:'{"text":"Arrow"}'}} 64

effect give @s minecraft:instant_health 1 10 true
tag @s remove keep_ammo