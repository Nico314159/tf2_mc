execute store result score $get_coordinates.within_16384 vdv_iris if entity @s[distance=..0.016384]

execute if score $get_coordinates.within_16384 vdv_iris matches 0 run scoreboard players add ${z} vdv_iris 16384
execute if score $get_coordinates.within_16384 vdv_iris matches 0 positioned ~ ~ ~0.016384 run function vdv_iris:get_coordinates/z/6
execute if score $get_coordinates.within_16384 vdv_iris matches 1 run function vdv_iris:get_coordinates/z/6