# This function gets the fractional part of the z coordinate, executed as an area effect cloud by vdv_iris:get_coordinates/as_marker
# Due to overflows, storing with a high scale was not possible. This method compares the executing position - aligned to the block grid - to the executing entity

execute store result score $get_coordinates.within_524288 vdv_iris if entity @s[distance=..0.524288]

execute if score $get_coordinates.within_524288 vdv_iris matches 0 run scoreboard players add ${z} vdv_iris 524288
execute if score $get_coordinates.within_524288 vdv_iris matches 0 positioned ~ ~ ~0.524288 run function vdv_iris:get_coordinates/z/1
execute if score $get_coordinates.within_524288 vdv_iris matches 1 run function vdv_iris:get_coordinates/z/1

# Clean up (runs after all functions in this folder have been executed)
scoreboard players reset $get_coordinates.within_524288 vdv_iris
scoreboard players reset $get_coordinates.within_262144 vdv_iris
scoreboard players reset $get_coordinates.within_131072 vdv_iris
scoreboard players reset $get_coordinates.within_65536 vdv_iris
scoreboard players reset $get_coordinates.within_32768 vdv_iris
scoreboard players reset $get_coordinates.within_16384 vdv_iris
scoreboard players reset $get_coordinates.within_8192 vdv_iris
scoreboard players reset $get_coordinates.within_4096 vdv_iris
scoreboard players reset $get_coordinates.within_2048 vdv_iris
scoreboard players reset $get_coordinates.within_1024 vdv_iris
scoreboard players reset $get_coordinates.within_512 vdv_iris
scoreboard players reset $get_coordinates.within_256 vdv_iris
scoreboard players reset $get_coordinates.within_128 vdv_iris
scoreboard players reset $get_coordinates.within_64 vdv_iris
scoreboard players reset $get_coordinates.within_32 vdv_iris
scoreboard players reset $get_coordinates.within_16 vdv_iris
scoreboard players reset $get_coordinates.within_8 vdv_iris
scoreboard players reset $get_coordinates.within_4 vdv_iris
scoreboard players reset $get_coordinates.within_2 vdv_iris
scoreboard players reset $get_coordinates.within_1 vdv_iris