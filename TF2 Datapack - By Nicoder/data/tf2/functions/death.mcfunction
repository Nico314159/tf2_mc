title @s actionbar ["",{"text":"\u2764 Health: 0 / ","color":"red","type":"text"},{"score":{"name":"@s","objective":"tf2.max_health"},"color":"red","type":"score"}]
title @s times 0 3 3
spawnpoint @s ~ ~ ~
tag @s add tf2.dead
gamemode spectator @s
execute store result storage tf2.__temp__:index i int 1 run scoreboard players get @s tf2.batch_number
function tf2:__private__/anonymous/33 with storage tf2.__temp__:index
summon area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Invulnerable:1b,Tags:["tf2.no_respawn"],Passengers:[{id:"minecraft:item",NoGravity:1b,Invulnerable:1b,Tags:["tf2.pickup","tf2.ammo_pack","tf2.no_respawn"],Age:-32768s,PickupDelay:32767s,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:22}}}]}