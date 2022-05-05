execute store result score $get_coordinates.within_8192 vdv_iris if entity @s[distance=..0.008192]

execute if score $get_coordinates.within_8192 vdv_iris matches 0 run scoreboard players add ${z} vdv_iris 8192
execute if score $get_coordinates.within_8192 vdv_iris matches 0 positioned ~ ~ ~0.008192 run function vdv_iris:get_coordinates/z/7
execute if score $get_coordinates.within_8192 vdv_iris matches 1 run function vdv_iris:get_coordinates/z/7