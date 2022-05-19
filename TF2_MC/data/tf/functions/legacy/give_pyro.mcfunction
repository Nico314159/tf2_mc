clear @s
attribute @s minecraft:generic.max_health base set 35
attribute @s minecraft:generic.movement_speed base set 0.1
attribute @s minecraft:generic.attack_damage base set 0
attribute @s minecraft:generic.attack_speed base set 1.25

title @s subtitle ""
scoreboard players set @s rightClicks 0
scoreboard players set @s FlameClicks 0
scoreboard players set @s maxHealth 35
scoreboard players set @s class 7

item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"Flamethrower"}]',Lore:['[{"text":"Alt-fire: Release a blast of air that pushes","italic":false,"color":"#ebe2ca"}]','[{"text":"away enemies and projectiles and","italic":false,"color":"#ebe2ca"}]','[{"text":"extinguishes flaming teammates","italic":false,"color":"#ebe2ca"}]']},Unbreakable:1,HideFlags:4,CustomModelData:401} 1

item replace entity @s hotbar.1 with minecraft:crossbow{Unbreakable:1,display:{Name:'[{"text":"Shotgun"}]'},HideFlags:4,Enchantments:[{id:"minecraft:multishot",lvl:3},{id:"minecraft:power",lvl:1}]} 1

item replace entity @s hotbar.2 with minecraft:iron_axe{Unbreakable:1,CustomModelData:1,HideFlags:6,display:{Name:'[{"text":"Fire Axe","italic":false}]',Lore:['[{"text":""}]','[{"text":"When In Main Hand:","color":"gray","italic":false},{"text":"","color":"gray","italic":false}]','[{"text":"13 Attack Damage","color":"dark_green","italic":false}]','[{"text":"1.25 Attack Speed","color":"dark_green","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:13,Operation:0,UUID:[I;1075133110,1059447085,1029179242,1625155374]}]} 1

summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["seal"],ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"blaze_powder",Count:100b},{id:"blaze_powder",Count:100b}]}
item replace entity @s hotbar.7 from entity @e[tag=seal,type=minecraft:armor_stand,limit=1,sort=nearest] weapon.mainhand
item replace entity @s hotbar.8 from entity @e[tag=seal,type=minecraft:armor_stand,limit=1,sort=nearest] weapon.offhand
kill @e[type=minecraft:armor_stand,tag=seal]

item replace entity @s hotbar.6 with arrow 32

effect give @s minecraft:instant_health 1 10 true
tag @s remove keep_ammo