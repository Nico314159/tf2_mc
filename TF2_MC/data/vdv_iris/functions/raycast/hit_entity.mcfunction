#> vdv_iris:raycast/hit_entity
#
# Runs when the ray hits an entity and outputs all available information to storage
#
# @within vdv_iris:raycast/loop

# Target type
data modify storage vdv_iris:output Target set value "ENTITY"

# Targeted entity
data modify storage vdv_iris:output TargetedEntity set value {UUID: [I; 0, 0, 0, 0], Pos: [0.0f, 0.0f, 0.0f]}
execute as @e[type=!#vdv_iris:ignore, tag=vdv_iris.possible_target] if score @s vdv_iris.id = $closest_cuboid_id vdv_iris run tag @s add vdv_iris.target
data modify storage vdv_iris:data Entity set from entity @e[type=!#vdv_iris:ignore, tag=vdv_iris.target, limit=1]
data modify storage vdv_iris:output TargetedEntity.UUID set from storage vdv_iris:data Entity.UUID
data modify storage vdv_iris:output TargetedEntity.Pos set from storage vdv_iris:data Entity.Pos
data remove storage vdv_iris:data Entity

# Contact surface
data modify storage vdv_iris:output ContactSurface set from storage vdv_iris:data ContactSurface

# Contact coordinates
data modify storage vdv_iris:output ContactCoordinates set value [0.0d, 0.0d, 0.0d]
execute store result storage vdv_iris:output ContactCoordinates[0] double 0.000001 run scoreboard players get $targeted_x vdv_iris
execute store result storage vdv_iris:output ContactCoordinates[1] double 0.000001 run scoreboard players get $targeted_y vdv_iris
execute store result storage vdv_iris:output ContactCoordinates[2] double 0.000001 run scoreboard players get $targeted_z vdv_iris
scoreboard players operation ${x} vdv_iris = $targeted_x vdv_iris
scoreboard players operation ${y} vdv_iris = $targeted_y vdv_iris
scoreboard players operation ${z} vdv_iris = $targeted_z vdv_iris

# Total distance
scoreboard players operation $entity_distance vdv_iris *= $1000 vdv_iris
scoreboard players operation $total_distance vdv_iris += $entity_distance vdv_iris
execute store result storage vdv_iris:output Distance double 0.000001 run scoreboard players get $total_distance vdv_iris

# Exit loop
scoreboard players operation $depth vdv_iris = $max_depth vdv_iris