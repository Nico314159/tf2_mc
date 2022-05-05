execute store success score $get_coordinates.within_512 vdv_iris if entity @s[distance=..0.000512]

execute if score $get_coordinates.within_512 vdv_iris matches 0 run scoreboard players add ${x} vdv_iris 512
execute if score $get_coordinates.within_512 vdv_iris matches 0 positioned ~0.000512 ~ ~ run function vdv_iris:get_coordinates/x/11
execute if score $get_coordinates.within_512 vdv_iris matches 1 run function vdv_iris:get_coordinates/x/11