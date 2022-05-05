#> vdv_iris:raycast/teleport_marker
#
# Sets coordinates of the ray marker to the calculated block coordinates (int only)
# The entity is teleported at the corner of the block
#
# @within vdv_iris:raycast/loop
# @context a marker
# @input
#	score $[x] vdv_iris
#		The integer x coordinate
#	score $[y] vdv_iris
#		The integer y coordinate
#	score $[z] vdv_iris
#		The integer z coordinate

# Save to storage
data modify storage vdv_iris:data EntityTag.Pos set value [0.0d, 0.0d, 0.0d]
execute store result storage vdv_iris:data EntityTag.Pos[0] double 1 run scoreboard players get $[x] vdv_iris
execute store result storage vdv_iris:data EntityTag.Pos[1] double 1 run scoreboard players get $[y] vdv_iris
execute store result storage vdv_iris:data EntityTag.Pos[2] double 1 run scoreboard players get $[z] vdv_iris

# Apply position
data modify entity @s Pos set from storage vdv_iris:data EntityTag.Pos