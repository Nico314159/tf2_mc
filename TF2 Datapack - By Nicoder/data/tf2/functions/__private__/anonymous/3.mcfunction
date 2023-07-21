execute if score @s tf2.team = $current tf2.team run return 0
scoreboard players set $damage tf2.var 9
scoreboard players operation $damage tf2.var *= @s retina.hit
scoreboard players operation @s tf2.health -= $damage tf2.var