execute store success score $within_128 vdv_iris if score $shift_z vdv_iris matches ..127

execute if score $within_128 vdv_iris matches 0 run scoreboard players remove $shift_z vdv_iris 128
execute if score $within_128 vdv_iris matches 0 positioned ~ ~ ~0.000128 run function vdv_iris:set_coordinates/z/13
execute if score $within_128 vdv_iris matches 1 run function vdv_iris:set_coordinates/z/13