execute store success score $within_64 vdv_iris if score $shift_x vdv_iris matches ..63

execute if score $within_64 vdv_iris matches 0 run scoreboard players remove $shift_x vdv_iris 64
execute if score $within_64 vdv_iris matches 0 positioned ~0.000064 ~ ~ run function vdv_iris:set_coordinates/x/14
execute if score $within_64 vdv_iris matches 1 run function vdv_iris:set_coordinates/x/14