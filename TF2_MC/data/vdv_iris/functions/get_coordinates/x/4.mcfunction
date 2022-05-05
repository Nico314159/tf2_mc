execute store success score $get_coordinates.within_32768 vdv_iris if entity @s[distance=..0.032768]

execute if score $get_coordinates.within_32768 vdv_iris matches 0 run scoreboard players add ${x} vdv_iris 32768
execute if score $get_coordinates.within_32768 vdv_iris matches 0 positioned ~0.032768 ~ ~ run function vdv_iris:get_coordinates/x/5
execute if score $get_coordinates.within_32768 vdv_iris matches 1 run function vdv_iris:get_coordinates/x/5