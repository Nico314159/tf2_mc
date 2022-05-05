#> vdv_iris:raycast/loop
#
# Loops forward until a contact surface is found or until the maximum recursion depth has been reached
#
# @context a marker and the current ray position
# @within vdv_iris:get_target
# @within vdv_iris:raycast/loop

# See if there is a non transparent block or an entity at the current position
execute at @s unless block ~ ~ ~ #vdv_iris:air run function vdv_iris:raycast/on_block_found
execute at @s if data storage vdv_iris:input {TargetEntities: true} if entity @e[type=!#vdv_iris:ignore, tag=!vdv_iris.executing, dx=0, dy=0, dz=0] run function vdv_iris:raycast/on_entity_found

# If the ray hit something, break the loop and return relevant information
execute if score $ray_hits_block vdv_iris matches 1 run function vdv_iris:raycast/hit_block
execute if score $ray_hits_entity vdv_iris matches 1 run function vdv_iris:raycast/hit_entity
data remove storage vdv_iris:data Surfaces

# Otherwise, proceed to the next block
execute unless score $ray_hits_block vdv_iris matches 1 unless score $ray_hits_entity vdv_iris matches 1 run function vdv_iris:find_next_block/main
execute unless score $ray_hits_block vdv_iris matches 1 unless score $ray_hits_entity vdv_iris matches 1 run function vdv_iris:raycast/teleport_marker

# Loop this function, if the maximum recursion depth has not been reached yet
scoreboard players add $depth vdv_iris 1
execute if score $depth vdv_iris < $max_depth vdv_iris at @s run function vdv_iris:raycast/loop
execute if score $depth vdv_iris = $max_depth vdv_iris run scoreboard players reset $total_distance vdv_iris