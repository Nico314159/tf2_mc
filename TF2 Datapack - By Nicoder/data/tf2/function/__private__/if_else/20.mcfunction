execute store result score $mu tf2.var run data get storage tf2:forces collision_friction 1000
scoreboard players operation $friction tf2.var *= $mu tf2.var
scoreboard players operation $friction tf2.var /= 1000 tf2.const