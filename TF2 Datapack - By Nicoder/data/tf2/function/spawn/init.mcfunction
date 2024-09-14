execute store result storage tf2:index i int 1 run scoreboard players get @s tf2.batch_number
function tf2:spawn/get_coords with storage tf2:index
function tf2:spawn/tp with storage tf2:coords
gamemode adventure @s
tag @s remove tf2.said_death_msg
tag @s remove tf2.on_fire
tag @s remove tf2.uber_patient
execute store result score @s tf2.afterburn_ticks run scoreboard players set @s tf2.interpolate_rmb 0
execute store result score @s tf2.time_surfaced run scoreboard players set @s tf2.drown_lost 0
function tf2:class_select
tag @s remove tf2.dead
title @s title ""
title @s subtitle ""