#> vdv_iris:get_coordinates/main
#
# Gets the current coordinates and rotation.
# Coordinates are returned as a triplet of integer coordinates and a triplet of fractional coordinates.
# Rotation is returned as a steering vector of magnitude 1000000.
#
# @context a position and a rotation
# @within vdv_iris:get_target
# @within vdv_iris:get_hitbox/entity
# @output
#	score $[x] vdv_iris
#		The integer x coordinate of the current position
#	score $[y] vdv_iris
#		The integer y coordinate of the current position
#	score $[z] vdv_iris
#		The integer z coordinate of the current position
#	score ${x} vdv_iris
#		The fractional x coordinate of the current position, represented by an integer between 0 and 1000000
#	score ${y} vdv_iris
#		The fractional y coordinate of the current position, represented by an integer between 0 and 1000000
#	score ${z} vdv_iris
#		The fractional z coordinate of the current position, represented by an integer between 0 and 1000000
#	score $dx vdv_iris
#		The x coordinate of the steering vector of the ray, represented by an integer between -1000000 and 1000000
#	score $dy vdv_iris
#		The y coordinate of the steering vector of the ray, represented by an integer between -1000000 and 1000000
#	score #dz vdv_iris
#		The z coordinate of the steering vector of the ray, represented by an integer between -1000000 and 1000000

summon minecraft:marker ~ ~ ~ {Tags: ["vdv_iris", "vdv_iris.get_coordinates"]}
execute as @e[type=minecraft:marker, tag=vdv_iris.get_coordinates, limit=1] run function vdv_iris:get_coordinates/as_marker