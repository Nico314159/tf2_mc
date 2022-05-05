execute store success score $within_1024 vdv_iris if score $shift_x vdv_iris matches ..1023

execute if score $within_1024 vdv_iris matches 0 run scoreboard players remove $shift_x vdv_iris 1024
execute if score $within_1024 vdv_iris matches 0 positioned ~0.001024 ~ ~ run function vdv_iris:set_coordinates/x/10
execute if score $within_1024 vdv_iris matches 1 run function vdv_iris:set_coordinates/x/10