execute store success score $within_16384 vdv_iris if score $shift_z vdv_iris matches ..16383

execute if score $within_16384 vdv_iris matches 0 run scoreboard players remove $shift_z vdv_iris 16384
execute if score $within_16384 vdv_iris matches 0 positioned ~ ~ ~0.016384 run function vdv_iris:set_coordinates/z/6
execute if score $within_16384 vdv_iris matches 1 run function vdv_iris:set_coordinates/z/6