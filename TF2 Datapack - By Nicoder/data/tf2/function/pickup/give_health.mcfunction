playsound tf2:pickup.health player @s ~ ~ ~ 0.55 0.85 0.2
scoreboard players operation $add_amount tf2.var *= @s tf2.max_health
scoreboard players add $add_amount tf2.var 99
scoreboard players operation $add_amount tf2.var /= 100 tf2.const
scoreboard players operation @s tf2.health += $add_amount tf2.var
function tf2:player/clamp_health
tag @s remove tf2.on_fire