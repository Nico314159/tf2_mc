execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["storage"]}
item replace entity @e[type=minecraft:armor_stand,tag=storage,limit=1] weapon.mainhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @s weapon.offhand 
item replace entity @s weapon.offhand from entity @e[type=minecraft:armor_stand,tag=storage,limit=1] weapon.mainhand
kill @e[type=minecraft:armor_stand,tag=storage]