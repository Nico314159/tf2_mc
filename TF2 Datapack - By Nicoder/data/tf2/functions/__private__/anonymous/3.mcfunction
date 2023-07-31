execute if score @s tf2.team = $current tf2.team run return 0
execute store result score $_distance_ tf2.var run data get storage retina:output Distance 1000
execute if score $_distance_ tf2.var > $_range_ tf2.var run return 0
scoreboard players operation $_damage_ tf2.var *= @s retina.hit
scoreboard players operation @s tf2.health -= $_damage_ tf2.var