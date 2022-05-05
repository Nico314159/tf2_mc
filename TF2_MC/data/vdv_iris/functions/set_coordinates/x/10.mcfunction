execute store success score $within_512 vdv_iris if score $shift_x vdv_iris matches ..511

execute if score $within_512 vdv_iris matches 0 run scoreboard players remove $shift_x vdv_iris 512
execute if score $within_512 vdv_iris matches 0 positioned ~0.000512 ~ ~ run function vdv_iris:set_coordinates/x/11
execute if score $within_512 vdv_iris matches 1 run function vdv_iris:set_coordinates/x/11