execute store success score $within_32 vdv_iris if score $shift_x vdv_iris matches ..31

execute if score $within_32 vdv_iris matches 0 run scoreboard players remove $shift_x vdv_iris 32
execute if score $within_32 vdv_iris matches 0 positioned ~0.000032 ~ ~ run function vdv_iris:set_coordinates/x/15
execute if score $within_32 vdv_iris matches 1 run function vdv_iris:set_coordinates/x/15