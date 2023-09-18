data modify storage tf2.__temp__:coords red_X set from entity @s data.map.spawn.red[0][0]
data modify storage tf2.__temp__:coords red_Y set from entity @s data.map.spawn.red[0][1]
data modify storage tf2.__temp__:coords red_Z set from entity @s data.map.spawn.red[0][2]
data modify storage tf2.__temp__:coords blu_X set from entity @s data.map.spawn.blu[0][0]
data modify storage tf2.__temp__:coords blu_Y set from entity @s data.map.spawn.blu[0][1]
data modify storage tf2.__temp__:coords blu_Z set from entity @s data.map.spawn.blu[0][2]
function tf2:spawn/tp with storage tf2.__temp__:coords
gamemode adventure @s
tag @s remove tf2.dead
scoreboard players operation @s tf2.health = @s tf2.max_health
title @s title ""
title @s subtitle ""