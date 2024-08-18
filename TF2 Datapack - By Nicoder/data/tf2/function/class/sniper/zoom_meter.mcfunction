scoreboard players operation $bars tf2.var = @s tf2.time_scoped
scoreboard players operation $bars tf2.var *= 10 tf2.const
scoreboard players operation $bars tf2.var /= 66 tf2.const
scoreboard players add $bars tf2.var 3
scoreboard players operation $bars tf2.var < 13 tf2.const
scoreboard players operation $bars tf2.var > 3 tf2.const
title @s times 0 4 2
execute positioned ~-3 ~-1 ~-3 unless entity @e[type=item_display,tag=tf2.control_point,dx=5,dy=1,dz=5] run title @s title ""
title @s[tag=tf2.unable_to_cap] title ""
execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get $bars tf2.var
function tf2:__private__/switch_case/2/select with storage tf2:__storage__