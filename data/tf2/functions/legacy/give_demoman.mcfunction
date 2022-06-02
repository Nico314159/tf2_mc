clear @s
attribute @s minecraft:generic.max_health base set 35
attribute @s minecraft:generic.movement_speed base set 0.093
attribute @s minecraft:generic.attack_damage base set 0
attribute @s minecraft:generic.attack_speed base set 1.25
title @s subtitle ""
scoreboard players set @s maxHealth 35
scoreboard players set @s rightClicks 0
scoreboard players set @s gracePeriod 0
scoreboard players set @s class 5
scoreboard players set @s primaryClip 4
scoreboard players set @s primaryAmmo 16
scoreboard players set @s secondaryClip 8
scoreboard players set @s secondaryAmmo 24
item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick{CustomModelData:501,display:{Name:'[{"text":"Grenade Launcher","italic":false}]'}} 1
item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick{CustomModelData:601,display:{Name:'[{"text":"Stickybomb Launcher (does not work)","italic":false}]'}} 1
item replace entity @s hotbar.2 with minecraft:glass_bottle{CustomModelData:101,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:13,Operation:0,UUID:[I;1086417434,1073490184,1029956212,1252178661]}],HideFlags:2} 1

effect give @s minecraft:instant_health 1 10 true
tag @s remove keep_ammo
