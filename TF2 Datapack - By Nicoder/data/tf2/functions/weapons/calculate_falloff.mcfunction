execute if score @s tf2.team = $current tf2.team run return 0
execute store result score $_distance_ tf2.var run data get storage retina:output Distance 1000
execute if score $_distance_ tf2.var > $_range_ tf2.var run return 0
scoreboard players operation $_finalDamage_ tf2.var = $_damage_ tf2.var
scoreboard players set __if_else__ tf2.var 0
execute if score $_rangeDependent_ tf2.var matches 1.. run function tf2:__private__/if_else/23
execute if score __if_else__ tf2.var matches 0 run function tf2:__private__/if_else/24
scoreboard players operation $_finalDamage_ tf2.var *= $_multiplier_ tf2.var
scoreboard players add $_finalDamage_ tf2.var 99
scoreboard players operation $_finalDamage_ tf2.var /= 100 tf2.const
scoreboard players operation @s tf2.health -= $_finalDamage_ tf2.var
data modify storage tf2.__temp__:summon number.X set from storage retina:output ContactCoordinates[0]
data modify storage tf2.__temp__:summon number.Y set from storage retina:output ContactCoordinates[1]
data modify storage tf2.__temp__:summon number.Z set from storage retina:output ContactCoordinates[2]
execute store result storage tf2.__temp__:summon number.value int 1 run scoreboard players get $_finalDamage_ tf2.var
function tf2:__private__/anonymous/9 with storage tf2.__temp__:summon number