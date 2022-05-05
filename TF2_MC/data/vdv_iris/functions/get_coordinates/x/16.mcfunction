execute store success score $get_coordinates.within_8 vdv_iris if entity @s[distance=..0.000008]

execute if score $get_coordinates.within_8 vdv_iris matches 0 run scoreboard players add ${x} vdv_iris 8
execute if score $get_coordinates.within_8 vdv_iris matches 0 positioned ~0.000008 ~ ~ run function vdv_iris:get_coordinates/x/17
execute if score $get_coordinates.within_8 vdv_iris matches 1 run function vdv_iris:get_coordinates/x/17