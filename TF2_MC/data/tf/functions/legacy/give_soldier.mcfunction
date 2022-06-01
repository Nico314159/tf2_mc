clear @s
attribute @s minecraft:generic.max_health base set 40
attribute @s minecraft:generic.movement_speed base set 0.085
attribute @s minecraft:generic.attack_damage base set 0
attribute @s minecraft:generic.attack_speed base set 1.25
scoreboard players set @s maxHealth 40
scoreboard players set @s primaryClip 4
scoreboard players set @s crossbow_shot 0
title @s subtitle ""
scoreboard players set @s rightClicks 0
scoreboard players set @s class 4
item replace entity @s hotbar.0 with crossbow{display:{Name:'{"text":"Rocket Launcher"}'},HideFlags:5,Unbreakable:1,isRocketLauncher:1b,Enchantments:[{id:"minecraft:quick_charge",lvl:2}],ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0,Colors:[I;11250603],FadeColors:[I;1973019]},{Type:0,Colors:[I;11250603],FadeColors:[I;1973019]}]}}},{},{}],Charged:1b} 1
item replace entity @s hotbar.1 with minecraft:crossbow{Unbreakable:1,display:{Name:'[{"text":"Shotgun"}]'},HideFlags:4,Enchantments:[{id:"minecraft:multishot",lvl:3},{id:"minecraft:power",lvl:1}]} 1
item replace entity @s hotbar.2 with minecraft:iron_shovel{Unbreakable:1,CustomModelData:1,HideFlags:6,display:{Name:'[{"text":"Shovel","italic":false}]',Lore:['[{"text":""}]','[{"text":"When In Main Hand:","color":"gray","italic":false},{"text":"","color":"gray","italic":false}]','[{"text":"13 Attack Damage","color":"dark_green","italic":false}]','[{"text":"1.25 Attack Speed","color":"dark_green","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:13,Operation:0,UUID:[I;1075133110,1059447085,1029179242,1625155374]}]} 1
item replace entity @s weapon.offhand with minecraft:firework_rocket{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;11250603],FadeColors:[I;1973019]},{Type:0,Flicker:0,Trail:0,Colors:[I;11250603],FadeColors:[I;1973019]}]}} 4
item replace entity @s hotbar.8 with minecraft:firework_rocket{fakeRocket:1b,Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;11250603],FadeColors:[I;1973019]},{Type:0,Flicker:0,Trail:0,Colors:[I;11250603],FadeColors:[I;1973019]}]}} 20
item replace entity @s hotbar.7 with minecraft:arrow 32

effect give @s minecraft:instant_health 1 10 true
tag @s remove keep_ammo