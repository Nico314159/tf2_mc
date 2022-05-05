execute store success score $within_4 vdv_iris if score $shift_z vdv_iris matches ..3

execute if score $within_4 vdv_iris matches 0 run scoreboard players remove $shift_z vdv_iris 4
execute if score $within_4 vdv_iris matches 0 positioned ~ ~ ~0.000004 run function vdv_iris:set_coordinates/z/18
execute if score $within_4 vdv_iris matches 1 run function vdv_iris:set_coordinates/z/18