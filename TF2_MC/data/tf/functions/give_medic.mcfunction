clear @s
attribute @s minecraft:generic.attack_damage base set 0
attribute @s minecraft:generic.attack_speed base set 1.25
attribute @p minecraft:generic.max_health base set 30
attribute @p minecraft:generic.movement_speed base set 0.107

title @s subtitle ""
scoreboard players set @s rightClicks 0
scoreboard players set @s uberMeter 0
scoreboard players set @s maxHealth 30
scoreboard players set @s class 9

item replace entity @s hotbar.0 with minecraft:bow{display:{Name:'[{"text":"Syringe Gun"}]'},Unbreakable:1,HideFlags:4} 1

item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick{display:{Name:'[{"text":"Medigun"}]'},Unbreakable:1,isMedigun:1b,HideFlags:4,CustomModelData:201} 1

item replace entity @s hotbar.2 with minecraft:stonecutter{Unbreakable:1,CustomModelData:1,HideFlags:6,display:{Name:'[{"text":"Bonesaw","italic":false}]',Lore:['[{"text":""}]','[{"text":"When In Main Hand:","color":"gray","italic":false},{"text":"","color":"gray","italic":false}]','[{"text":"13 Attack Damage","color":"dark_green","italic":false}]','[{"text":"1.25 Attack Speed","color":"dark_green","italic":false}]']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:13,Operation:0,UUID:[I;1075133110,1059447085,1029179242,1625155374]}]} 1

item replace entity @s hotbar.8 with minecraft:tipped_arrow{CustomPotionColor:13421772,display:{Name:'{"text":"Syringe"}'}} 40

effect give @s minecraft:instant_health 1 10 true
tag @s remove keep_ammo

