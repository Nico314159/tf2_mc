#> vdv_iris:find_closest_surface/top/find_intersection
#
# Get position of the intersection, and see if that position is within the current surface
#
# @within vdv_iris:find_closest_surface/top/get_distance

# Get x position of the intersection
scoreboard players operation $x_intersection vdv_iris = $distance vdv_iris
scoreboard players operation $x_intersection vdv_iris *= $dx vdv_iris
scoreboard players operation $x_intersection vdv_iris /= $1000 vdv_iris
scoreboard players operation $x_intersection vdv_iris += ${x} vdv_iris

# Get y position of the intersection
scoreboard players operation $y_intersection vdv_iris = $y0 vdv_iris

# Get z position of the intersection
scoreboard players operation $z_intersection vdv_iris = $distance vdv_iris
scoreboard players operation $z_intersection vdv_iris *= $dz vdv_iris
scoreboard players operation $z_intersection vdv_iris /= $1000 vdv_iris
scoreboard players operation $z_intersection vdv_iris += ${z} vdv_iris

# If the ray hits the surface, return this as the minimum distance and the contact surface
execute if score $x_intersection vdv_iris >= $x0 vdv_iris if score $x_intersection vdv_iris <= $x1 vdv_iris if score $z_intersection vdv_iris >= $z0 vdv_iris if score $z_intersection vdv_iris <= $z1 vdv_iris run function vdv_iris:find_closest_surface/ray_intersects_with_surface