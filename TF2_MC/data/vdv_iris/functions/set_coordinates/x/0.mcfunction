execute store success score $within_524288 vdv_iris if score $shift_x vdv_iris matches ..524287

execute if score $within_524288 vdv_iris matches 0 run scoreboard players remove $shift_x vdv_iris 524288
execute if score $within_524288 vdv_iris matches 0 positioned ~0.524288 ~ ~ run function vdv_iris:set_coordinates/x/1
execute if score $within_524288 vdv_iris matches 1 run function vdv_iris:set_coordinates/x/1