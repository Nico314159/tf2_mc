execute store result score $get_coordinates.within_64 vdv_iris if entity @s[distance=..0.000064]

execute if score $get_coordinates.within_64 vdv_iris matches 0 run scoreboard players add ${z} vdv_iris 64
execute if score $get_coordinates.within_64 vdv_iris matches 0 positioned ~ ~ ~0.000064 run function vdv_iris:get_coordinates/z/14
execute if score $get_coordinates.within_64 vdv_iris matches 1 run function vdv_iris:get_coordinates/z/14