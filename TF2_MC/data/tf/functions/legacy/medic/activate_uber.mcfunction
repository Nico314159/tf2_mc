execute if entity @s[team=RED] run effect give @e[team=RED,sort=nearest,limit=2,distance=0..6] minecraft:resistance 8 9 false
execute if entity @s[team=BLU] run effect give @e[team=BLU,sort=nearest,limit=2,distance=0..6] minecraft:resistance 8 9 false

tag @s add using_uber