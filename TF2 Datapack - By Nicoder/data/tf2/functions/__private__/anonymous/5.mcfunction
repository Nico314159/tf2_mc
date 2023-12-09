execute if score $validOffset tf2.var matches 1.. at @s anchored eyes run particle minecraft:sweep_attack ^ ^ ^1
execute if data storage retina:output {Target: "NONE"} run playsound tf2:item.melee.miss ambient @s ~ ~ ~ 0.35 0.35 0.1
execute unless data storage retina:output {Target: "NONE"} run playsound tf2:item.melee.hit ambient @s ~ ~ ~ 1.5 0.9 0.1