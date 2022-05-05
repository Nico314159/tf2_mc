#> vdv_iris:find_closest_surface/ray_already_in_surface
#
# Establishes the current surface as the first the ray will hit.
# This function only runs if the ray is already within a surface, guaranteeing that this surface is the contact surface.
#
# @within vdv_iris:find_closest_surface/bottom/loop
# @within vdv_iris:find_closest_surface/east/loop
# @within vdv_iris:find_closest_surface/north/loop
# @within vdv_iris:find_closest_surface/south/loop
# @within vdv_iris:find_closest_surface/top/loop
# @within vdv_iris:find_closest_surface/west/loop

scoreboard players set $ray_hits_surface vdv_iris 1
scoreboard players operation $closest_cuboid_id vdv_iris = $cuboid_id vdv_iris
scoreboard players set $min_distance_to_surface vdv_iris 0
data modify storage vdv_iris:data ContactSurface set from storage vdv_iris:data List[-1]

# The three following scores are eventually sent to output storage
scoreboard players operation $targeted_x vdv_iris = ${x} vdv_iris
scoreboard players operation $targeted_y vdv_iris = ${y} vdv_iris
scoreboard players operation $targeted_z vdv_iris = ${z} vdv_iris