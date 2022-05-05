#> vdv_iris:get_coordinates/x/0
#
# This function gets the fractional part of the x coordinate
# It is not possible to retrieve position with high precision with only a few commands due to overflows. This method compares the executing position - aligned to the block grid - to the executing entity
#
# @context a marker entity, and its position after alignment to the x axis
# @within vdv_iris:get_coordinates/as_marker

execute store success score $get_coordinates.within_524288 vdv_iris if entity @s[distance=..0.524288]

execute if score $get_coordinates.within_524288 vdv_iris matches 0 run scoreboard players add ${x} vdv_iris 524288
execute if score $get_coordinates.within_524288 vdv_iris matches 0 positioned ~0.524288 ~ ~ run function vdv_iris:get_coordinates/x/1
execute if score $get_coordinates.within_524288 vdv_iris matches 1 run function vdv_iris:get_coordinates/x/1