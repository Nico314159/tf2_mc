execute store success score $within_524288 vdv_iris if score $shift_z vdv_iris matches ..524287

execute if score $within_524288 vdv_iris matches 0 run scoreboard players remove $shift_z vdv_iris 524288
execute if score $within_524288 vdv_iris matches 0 positioned ~ ~ ~0.524288 run function vdv_iris:set_coordinates/z/1
execute if score $within_524288 vdv_iris matches 1 run function vdv_iris:set_coordinates/z/1

# Clean up (this happens at the end of the 19 functions)
scoreboard players reset $within_524288 vdv_iris
scoreboard players reset $within_262144 vdv_iris
scoreboard players reset $within_131072 vdv_iris
scoreboard players reset $within_65536 vdv_iris
scoreboard players reset $within_32768 vdv_iris
scoreboard players reset $within_16384 vdv_iris
scoreboard players reset $within_8192 vdv_iris
scoreboard players reset $within_4096 vdv_iris
scoreboard players reset $within_2048 vdv_iris
scoreboard players reset $within_1024 vdv_iris
scoreboard players reset $within_512 vdv_iris
scoreboard players reset $within_256 vdv_iris
scoreboard players reset $within_128 vdv_iris
scoreboard players reset $within_64 vdv_iris
scoreboard players reset $within_32 vdv_iris
scoreboard players reset $within_16 vdv_iris
scoreboard players reset $within_8 vdv_iris
scoreboard players reset $within_4 vdv_iris
scoreboard players reset $within_2 vdv_iris
scoreboard players reset $within_1 vdv_iris