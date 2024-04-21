particle dust{color:[0.0,0.4,1.0],scale:0.9} ^ ^ ^ 0 0 0 0 2 force @a[tag=!tf2.self,tag=!retina.target]
execute if entity @s[distance=  ..02] run particle dust{color:[0.0,0.4,1.0],scale:0.10} ^ ^ ^ 0 0 0 0 2 force @s
execute if entity @s[distance=02..05] run particle dust{color:[0.0,0.4,1.0],scale:0.25} ^ ^ ^ 0 0 0 0 2 force @s
execute if entity @s[distance=05..50] run particle dust{color:[0.0,0.4,1.0],scale:0.55} ^ ^ ^ 0 0 0 0 2 force @s
execute if entity @s[distance=50..  ] run particle dust{color:[0.0,0.4,1.0],scale:0.90} ^ ^ ^ 0 0 0 0 2 force @s
particle dust{color:[0.0,0.4,1.0],scale:0.3} ^ ^ ^ 0 0 0 0 2 force @a[tag=retina.target]