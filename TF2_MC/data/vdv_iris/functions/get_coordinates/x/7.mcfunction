execute store success score $get_coordinates.within_4096 vdv_iris if entity @s[distance=..0.004096]

execute if score $get_coordinates.within_4096 vdv_iris matches 0 run scoreboard players add ${x} vdv_iris 4096
execute if score $get_coordinates.within_4096 vdv_iris matches 0 positioned ~0.004096 ~ ~ run function vdv_iris:get_coordinates/x/8
execute if score $get_coordinates.within_4096 vdv_iris matches 1 run function vdv_iris:get_coordinates/x/8