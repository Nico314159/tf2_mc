#> vdv_iris:find_closest_surface/west/get_distance
#
# Gets distance to the plane containing the surface and determines whether the intersection of the ray on the plane is inside the surface
#
# @within vdv_iris:find_closest_surface/west/loop

# Get distance to the plane containing the surface
scoreboard players operation $distance vdv_iris = $x0 vdv_iris
scoreboard players operation $distance vdv_iris -= ${x} vdv_iris
scoreboard players operation $distance vdv_iris *= $1000 vdv_iris
scoreboard players operation $distance vdv_iris /= $dx vdv_iris

# If this distance is closer than the minimum distance to a surface hit by the ray found so far, see if the ray intersects with the surface
execute if score $distance vdv_iris < $min_distance_to_surface vdv_iris run function vdv_iris:find_closest_surface/west/find_intersection