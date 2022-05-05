execute store success score $get_coordinates.within_4 vdv_iris if entity @s[distance=..0.000004]

execute if score $get_coordinates.within_4 vdv_iris matches 0 run scoreboard players add ${x} vdv_iris 4
execute if score $get_coordinates.within_4 vdv_iris matches 0 positioned ~0.000004 ~ ~ run function vdv_iris:get_coordinates/x/18
execute if score $get_coordinates.within_4 vdv_iris matches 1 run function vdv_iris:get_coordinates/x/18