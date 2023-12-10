execute store result storage tf2.__temp__:index i int 1 run scoreboard players get @s tf2.batch_number
function tf2:spawn/get_coords with storage tf2.__temp__:index
function tf2:spawn/tp with storage tf2.__temp__:coords
gamemode adventure @s
tag @s remove tf2.dead
scoreboard players operation @s tf2.health = @s tf2.max_health
execute store result score @s tf2.time_surfaced run scoreboard players set @s tf2.drown_lost 0
function tf2:class_select
title @s title ""
title @s subtitle ""