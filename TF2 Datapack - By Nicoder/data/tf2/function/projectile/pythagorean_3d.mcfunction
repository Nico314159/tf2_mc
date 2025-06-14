execute as @e[tag=tf2.origin] at @s summon marker run function tf2:__private__/anonymous/12
execute at @s summon marker run function tf2:__private__/anonymous/13
scoreboard players operation $deltaX tf2.var = $Xf tf2.var
scoreboard players operation $deltaX tf2.var -= $X0 tf2.var
scoreboard players operation $deltaY tf2.var = $Yf tf2.var
scoreboard players operation $deltaY tf2.var -= $Y0 tf2.var
scoreboard players operation $deltaZ tf2.var = $Zf tf2.var
scoreboard players operation $deltaZ tf2.var -= $Z0 tf2.var
data modify storage tf2:summon matrix set value [0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,1f]
execute store result storage tf2:summon matrix[0] float 1 run scoreboard players get $deltaX tf2.var
execute store result storage tf2:summon matrix[4] float 1 run scoreboard players get $deltaY tf2.var
execute store result storage tf2:summon matrix[8] float 1 run scoreboard players get $deltaZ tf2.var
execute summon item_display run function tf2:__private__/anonymous/14