execute store success score $within_262144 vdv_iris if score $shift_x vdv_iris matches ..262143

execute if score $within_262144 vdv_iris matches 0 run scoreboard players remove $shift_x vdv_iris 262144
execute if score $within_262144 vdv_iris matches 0 positioned ~0.262144 ~ ~ run function vdv_iris:set_coordinates/x/2
execute if score $within_262144 vdv_iris matches 1 run function vdv_iris:set_coordinates/x/2