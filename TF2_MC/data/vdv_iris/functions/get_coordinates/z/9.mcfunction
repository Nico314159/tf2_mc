execute store result score $get_coordinates.within_1024 vdv_iris if entity @s[distance=..0.001024]

execute if score $get_coordinates.within_1024 vdv_iris matches 0 run scoreboard players add ${z} vdv_iris 1024
execute if score $get_coordinates.within_1024 vdv_iris matches 0 positioned ~ ~ ~0.001024 run function vdv_iris:get_coordinates/z/10
execute if score $get_coordinates.within_1024 vdv_iris matches 1 run function vdv_iris:get_coordinates/z/10