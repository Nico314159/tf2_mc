clear @s
attribute @s minecraft:generic.max_health base set 25 
attribute @s minecraft:generic.movement_speed base set 0.1
attribute @s minecraft:generic.attack_damage base set 0
attribute @s minecraft:generic.attack_speed base set 1.25
title @s subtitle ""
scoreboard players set @s rightClicks 0
scoreboard players set @s timeScoped 0
scoreboard players set @s smg_ammo 25
scoreboard players set @s maxHealth 25
scoreboard players set @s class 2
scoreboard players set @s minimum_damage 10
scoreboard players set @s maximum_damage 30

item replace entity @s hotbar.0 with minecraft:crossbow{Unbreakable:1,HideFlags:4} 1
item replace entity @s weapon.offhand with minecraft:spyglass{display:{Name:'[{"text":"Sniper Scope","italic":false}]'}} 1
item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"SMG","italic":false}]'},Unbreakable:1,HideFlags:4,CustomModelData:701} 1
item replace entity @s hotbar.2 with minecraft:iron_sword{Unbreakable:1,CustomModelData:1,HideFlags:6,display:{Name:'[{"text":"Kukri","italic":false}]',Lore:['[{"text":""}]','[{"text":"When In Main Hand:","color":"gray","italic":false},{"text":"","color":"gray","italic":false}]','[{"text":"13 Attack Damage","color":"dark_green","italic":false}]','[{"text":"1.25 Attack Speed","color":"dark_green","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:13,Operation:0,UUID:[I;1075133110,1059447085,1029179242,1625155374]}]} 1
item replace entity @s hotbar.8 with minecraft:tipped_arrow{CustomPotionColor:131328} 25

effect give @s minecraft:instant_health 1 10 true
tag @s remove keep_ammo