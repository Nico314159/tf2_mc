execute store success score $within_8192 vdv_iris if score $shift_x vdv_iris matches ..8191

execute if score $within_8192 vdv_iris matches 0 run scoreboard players remove $shift_x vdv_iris 8192
execute if score $within_8192 vdv_iris matches 0 positioned ~0.008192 ~ ~ run function vdv_iris:set_coordinates/x/7
execute if score $within_8192 vdv_iris matches 1 run function vdv_iris:set_coordinates/x/7