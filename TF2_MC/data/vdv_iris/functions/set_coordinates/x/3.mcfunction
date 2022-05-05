execute store success score $within_65536 vdv_iris if score $shift_x vdv_iris matches ..65535

execute if score $within_65536 vdv_iris matches 0 run scoreboard players remove $shift_x vdv_iris 65536
execute if score $within_65536 vdv_iris matches 0 positioned ~0.065536 ~ ~ run function vdv_iris:set_coordinates/x/4
execute if score $within_65536 vdv_iris matches 1 run function vdv_iris:set_coordinates/x/4