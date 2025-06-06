execute store result storage tf2:index i int 1 run scoreboard players get @s tf2.batch_number
function tf2:spawn/get_coords with storage tf2:index
function tf2:spawn/tp with storage tf2:coords
gamemode adventure @s
tag @s add tf2.dead
tag @s remove tf2.said_death_msg
tag @s remove tf2.on_fire
execute if entity @s[tag=tf2.uber_patient] run function tf2:__private__/if_else/90
execute store result score @s tf2.afterburn_ticks run scoreboard players set @s tf2.interpolate_rmb 0
execute store result score @s tf2.time_surfaced run scoreboard players set @s tf2.drown_lost 0
scoreboard players set @s tf2.airblast_delay 0
function tf2:replenish_ammo_and_health
tag @s remove tf2.dead
title @s title ""
title @s subtitle ""