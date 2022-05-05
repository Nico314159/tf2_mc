#> vdv_iris:raycast/on_entity_found
#
# Runs when an entity's hitbox is partly within the current block, and identifies whether or not the ray intersects with one of its surfaces
#
# @within vdv_iris:raycast/loop
# @context an entity and the position of the ray marker
# @output
#	score $ray_hits_entity vdv_iris
#		0 or 1. Whether or not the ray hits any surface of the entity.
#	score $closest_entity vdv_iris
#		The ID of the entity that is hit on vdv_iris.id.

# Identify the entity and get a list of surfaces
scoreboard players set $max vdv_iris.id 0
tag @e[type=!#vdv_iris:ignore] remove vdv_iris.possible_target
data remove storage vdv_iris:data Surfaces
execute as @e[type=!#vdv_iris:ignore, tag=!vdv_iris.executing, dx=0, dy=0, dz=0] run function vdv_iris:get_hitbox/entity

# See if the ray hits any surface
scoreboard players set $ray_hits_surface vdv_iris 0
execute if data storage vdv_iris:data Surfaces run function vdv_iris:find_closest_surface/main
execute if score $ray_hits_surface vdv_iris matches 1 run scoreboard players operation $entity_distance vdv_iris = $min_distance_to_surface vdv_iris
scoreboard players operation $ray_hits_entity vdv_iris = $ray_hits_surface vdv_iris

# If the ray could hit both an entity and a block, remember only the one that comes first
execute if score $ray_hits_entity vdv_iris matches 1 if score $ray_hits_block vdv_iris matches 1 if score $entity_distance vdv_iris < $block_distance vdv_iris run scoreboard players set $ray_hits_block vdv_iris 0
execute if score $ray_hits_entity vdv_iris matches 1 if score $ray_hits_block vdv_iris matches 1 if score $entity_distance vdv_iris >= $block_distance vdv_iris run scoreboard players set $ray_hits_entity vdv_iris 0