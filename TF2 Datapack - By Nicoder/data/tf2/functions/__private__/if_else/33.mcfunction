particle dust 0.0 0.4 1.0 0.9 ^ ^ ^ 0 0 0 0 2 force @a[tag=!tf2.self,tag=!retina.target]
execute if entity @s[distance=  ..5] run particle dust 0.0 0.4 1.0 0.25 ^ ^ ^ 0 0 0 0 2 force @s
execute if entity @s[distance=5..50] run particle dust 0.0 0.4 1.0 0.50 ^ ^ ^ 0 0 0 0 2 force @s
execute if entity @s[distance=50.. ] run particle dust 0.0 0.4 1.0 0.90 ^ ^ ^ 0 0 0 0 2 force @s
particle dust 0.0 0.4 1.0 0.3 ^ ^ ^ 0 0 0 0 2 force @a[tag=retina.target]