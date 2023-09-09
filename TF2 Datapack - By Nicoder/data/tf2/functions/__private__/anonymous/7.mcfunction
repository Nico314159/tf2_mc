execute if score @s tf2.team = $current tf2.team run return 0
execute store result score $_distance_ tf2.var run data get storage retina:output Distance 1000
execute if score $_distance_ tf2.var > $_range_ tf2.var run return 0
scoreboard players operation $_finalDamage_ tf2.var = $_damage_ tf2.var
scoreboard players set __if_else__ tf2.var 0
execute if score $_rangeDependent_ tf2.var matches 1.. run function tf2:__private__/if_else/24
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/25
scoreboard players operation $_finalDamage_ tf2.var *= $_multiplier_ tf2.var
scoreboard players add $_finalDamage_ tf2.var 99
scoreboard players operation $_finalDamage_ tf2.var /= 100 tf2.const
scoreboard players operation @s tf2.health -= $_finalDamage_ tf2.var