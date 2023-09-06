tag @e[type=marker,tag=retina.endpoint,tag=!tf2.used,limit=1] add tf2.rotate
tellraw @a ["mid 1: ",{"nbt":"Pos","entity":"@s"}]
execute at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=tf2.rotate,limit=1]
execute as @e[type=marker,tag=tf2.rotate] run function tf2:__private__/anonymous/4
tellraw @a ["mid 2: ",{"nbt":"Pos","entity":"@s"}]
tag @s add tf2.intermediate