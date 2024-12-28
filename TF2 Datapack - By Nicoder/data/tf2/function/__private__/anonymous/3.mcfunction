execute at @s anchored eyes run particle minecraft:sweep_attack ^ ^ ^1
execute unless data storage retina:output {Target:"ENTITY"} run return run playsound tf2:item.melee.miss player @s ~ ~ ~ 0.35 0.35 0.1
playsound tf2:item.melee.hit player @s ~ ~ ~ 1.5 0.9 0.1