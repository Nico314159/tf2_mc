execute store success score $within_32768 vdv_iris if score $shift_z vdv_iris matches ..32767

execute if score $within_32768 vdv_iris matches 0 run scoreboard players remove $shift_z vdv_iris 32768
execute if score $within_32768 vdv_iris matches 0 positioned ~ ~ ~0.032768 run function vdv_iris:set_coordinates/z/5
execute if score $within_32768 vdv_iris matches 1 run function vdv_iris:set_coordinates/z/5