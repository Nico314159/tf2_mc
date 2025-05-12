execute anchored eyes positioned ^-0.25 ^-0.25 ^ positioned ~ ~ ~ summon minecraft:marker run function tf2:__private__/anonymous/8
data modify storage tf2:summon line.endX set from storage retina:output ContactCoordinates[0]
data modify storage tf2:summon line.endY set from storage retina:output ContactCoordinates[1]
data modify storage tf2:summon line.endZ set from storage retina:output ContactCoordinates[2]
scoreboard players set $length tf2.var 0
execute store result score $component tf2.var run data get storage tf2:summon line.endX 1000
execute store result score $start tf2.var run data get storage tf2:summon line.X 1000
scoreboard players operation $component tf2.var -= $start tf2.var
scoreboard players operation $component tf2.var *= $component tf2.var
scoreboard players operation $length tf2.var += $component tf2.var
execute store result score $component tf2.var run data get storage tf2:summon line.endY 1000
execute store result score $start tf2.var run data get storage tf2:summon line.Y 1000
scoreboard players operation $component tf2.var -= $start tf2.var
scoreboard players operation $component tf2.var *= $component tf2.var
scoreboard players operation $length tf2.var += $component tf2.var
execute store result score $component tf2.var run data get storage tf2:summon line.endZ 1000
execute store result score $start tf2.var run data get storage tf2:summon line.Z 1000
scoreboard players operation $component tf2.var -= $start tf2.var
scoreboard players operation $component tf2.var *= $component tf2.var
scoreboard players operation $length tf2.var += $component tf2.var
scoreboard players operation __math__.N tf2.var = $length tf2.var
function tf2:__private__/math_sqrt/main
scoreboard players operation $length tf2.var = __math__.x_n tf2.var
execute store result storage tf2:summon line.scale float 0.002 run scoreboard players get $length tf2.var
function tf2:__private__/anonymous/9 with storage tf2:summon line