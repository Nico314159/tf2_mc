execute if entity @s[tag=!tf2.opponent] run return 0
scoreboard players operation @s tf2.health -= $damage tf2.var
damage @s 0.01 tf2:screenshake