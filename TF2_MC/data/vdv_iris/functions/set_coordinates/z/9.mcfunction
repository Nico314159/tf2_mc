execute store success score $within_1024 vdv_iris if score $shift_z vdv_iris matches ..1023

execute if score $within_1024 vdv_iris matches 0 run scoreboard players remove $shift_z vdv_iris 1024
execute if score $within_1024 vdv_iris matches 0 positioned ~ ~ ~0.001024 run function vdv_iris:set_coordinates/z/10
execute if score $within_1024 vdv_iris matches 1 run function vdv_iris:set_coordinates/z/10