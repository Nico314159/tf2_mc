execute store success score $within_4096 vdv_iris if score $shift_x vdv_iris matches ..4095

execute if score $within_4096 vdv_iris matches 0 run scoreboard players remove $shift_x vdv_iris 4096
execute if score $within_4096 vdv_iris matches 0 positioned ~0.004096 ~ ~ run function vdv_iris:set_coordinates/x/8
execute if score $within_4096 vdv_iris matches 1 run function vdv_iris:set_coordinates/x/8