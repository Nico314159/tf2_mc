clear @s
attribute @p minecraft:generic.max_health base set 25 
attribute @p minecraft:generic.movement_speed base set 0.1
attribute @s minecraft:generic.attack_damage base set 0
attribute @s minecraft:generic.attack_speed base set 1.25

title @s subtitle ""
scoreboard players set @s rightClicks 0
scoreboard players set @s metal 200
scoreboard players set @s maxHealth 25
scoreboard players set @s class 8
scoreboard players set @s crossbow_shot 0
scoreboard players set @s bow_shot 0
scoreboard players set @s primaryClip 6
scoreboard players set @s primaryAmmo 32
scoreboard players set @s secondaryClip 12
scoreboard players set @s secondaryAmmo 64


item replace entity @s hotbar.0 with minecraft:crossbow{Unbreakable:1,display:{Name:'[{"text":"Shotgun","italic": false}]'},HideFlags:4,Enchantments:[{id:"minecraft:multishot",lvl:3},{id:"minecraft:power",lvl:1},{id:"minecraft:quick_charge",lvl:1}]} 1
item replace entity @s hotbar.1 with minecraft:bow{Unbreakable:1,display:{Name:'[{"text":"Pistol","italic": false}]'},HideFlags:4} 1
item replace entity @s hotbar.2 with minecraft:iron_hoe{Unbreakable:1,display:{Name:'[{"text":"Monkey Wrench","italic": false}]',Lore:['[{"text":""}]','[{"text":"When in Main Hand: ","italic":false,"color":"gray"}]','[{"text":"13 Attack Damage","italic":false,"color":"dark_green"}]','[{"text":"1.25 Attack Speed","italic":false,"color":"dark_green"}]']},HideFlags:6,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:13,Operation:0,UUID:[I;1066893281,1056871661,1011260863,1582104923]}]} 1
item replace entity @s hotbar.3 with minecraft:warped_fungus_on_a_stick{display:{Name:'[{"text":"Construct PDA","italic": false}]'},CustomModelData:100}

effect give @s minecraft:instant_health 1 10 true
tag @s remove keep_ammo
function tf:engineer/fill_clip