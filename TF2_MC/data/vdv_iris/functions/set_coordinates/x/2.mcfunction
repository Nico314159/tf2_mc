execute store success score $within_131072 vdv_iris if score $shift_x vdv_iris matches ..131071

execute if score $within_131072 vdv_iris matches 0 run scoreboard players remove $shift_x vdv_iris 131072
execute if score $within_131072 vdv_iris matches 0 positioned ~0.131072 ~ ~ run function vdv_iris:set_coordinates/x/3
execute if score $within_131072 vdv_iris matches 1 run function vdv_iris:set_coordinates/x/3