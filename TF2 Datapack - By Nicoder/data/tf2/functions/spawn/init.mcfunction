scoreboard players operation $local tf2.batch_number = @s tf2.batch_number
execute as @e[type=marker,tag=tf2.batch] if score @s tf2.batch_number = $local tf2.batch_number run function tf2:__private__/anonymous/15
function tf2:spawn/tp with storage tf2.__temp__:coords
gamemode adventure @s
tag @s remove tf2.dead
scoreboard players operation @s tf2.health = @s tf2.max_health
title @s title ""
title @s subtitle ""