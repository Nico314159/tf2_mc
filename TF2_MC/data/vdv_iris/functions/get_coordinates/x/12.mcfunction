execute store success score $get_coordinates.within_128 vdv_iris if entity @s[distance=..0.000128]

execute if score $get_coordinates.within_128 vdv_iris matches 0 run scoreboard players add ${x} vdv_iris 128
execute if score $get_coordinates.within_128 vdv_iris matches 0 positioned ~0.000128 ~ ~ run function vdv_iris:get_coordinates/x/13
execute if score $get_coordinates.within_128 vdv_iris matches 1 run function vdv_iris:get_coordinates/x/13