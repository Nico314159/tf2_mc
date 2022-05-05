execute store result score $get_coordinates.within_2 vdv_iris if entity @s[distance=..0.000002]

execute if score $get_coordinates.within_2 vdv_iris matches 0 run scoreboard players add ${z} vdv_iris 2
execute if score $get_coordinates.within_2 vdv_iris matches 0 positioned ~ ~ ~0.000002 unless entity @s[distance=..0.000001] run scoreboard players add ${z} vdv_iris 1
execute if score $get_coordinates.within_2 vdv_iris matches 1 unless entity @s[distance=..0.000001] run scoreboard players add ${z} vdv_iris 1