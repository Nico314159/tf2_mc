#> vdv_iris:find_closest_surface/ray_intersects_with_surface
#
# Establishes the current surface as the first the ray will hit.
# This function only runs if the ray is closer to this surface than it is to any other surface analysed so far, but there is no guarantee that this is the surface the ray will eventually hit first.
#
# @within vdv_iris:find_closest_surface/bottom/find_intersection
# @within vdv_iris:find_closest_surface/east/find_intersection
# @within vdv_iris:find_closest_surface/north/find_intersection
# @within vdv_iris:find_closest_surface/south/find_intersection
# @within vdv_iris:find_closest_surface/top/find_intersection
# @within vdv_iris:find_closest_surface/west/find_intersection

scoreboard players set $ray_hits_surface vdv_iris 1
scoreboard players operation $closest_cuboid_id vdv_iris = $cuboid_id vdv_iris
scoreboard players operation $min_distance_to_surface vdv_iris = $distance vdv_iris

# The three following scores are eventually sent to output storage
scoreboard players operation $targeted_x vdv_iris = $x_intersection vdv_iris
scoreboard players operation $targeted_y vdv_iris = $y_intersection vdv_iris
scoreboard players operation $targeted_z vdv_iris = $z_intersection vdv_iris

data modify storage vdv_iris:data ContactSurface set from storage vdv_iris:data List[-1]