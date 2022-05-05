execute store success score $get_coordinates.within_262144 vdv_iris if entity @s[distance=..0.262144]

execute if score $get_coordinates.within_262144 vdv_iris matches 0 run scoreboard players add ${x} vdv_iris 262144
execute if score $get_coordinates.within_262144 vdv_iris matches 0 positioned ~0.262144 ~ ~ run function vdv_iris:get_coordinates/x/2
execute if score $get_coordinates.within_262144 vdv_iris matches 1 run function vdv_iris:get_coordinates/x/2