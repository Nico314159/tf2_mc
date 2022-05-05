execute store success score $within_8 vdv_iris if score $shift_z vdv_iris matches ..7

execute if score $within_8 vdv_iris matches 0 run scoreboard players remove $shift_z vdv_iris 8
execute if score $within_8 vdv_iris matches 0 positioned ~ ~ ~0.000008 run function vdv_iris:set_coordinates/z/17
execute if score $within_8 vdv_iris matches 1 run function vdv_iris:set_coordinates/z/17