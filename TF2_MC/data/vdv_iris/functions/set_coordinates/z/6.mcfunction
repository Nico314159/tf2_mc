execute store success score $within_8192 vdv_iris if score $shift_z vdv_iris matches ..8191

execute if score $within_8192 vdv_iris matches 0 run scoreboard players remove $shift_z vdv_iris 8192
execute if score $within_8192 vdv_iris matches 0 positioned ~ ~ ~0.008192 run function vdv_iris:set_coordinates/z/7
execute if score $within_8192 vdv_iris matches 1 run function vdv_iris:set_coordinates/z/7