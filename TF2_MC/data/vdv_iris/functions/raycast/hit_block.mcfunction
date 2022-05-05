#> vdv_iris:raycast/hit_block
#
# Runs when the ray hits a solid block surface and outputs all available information to storage
#
# @within vdv_iris:raycast/loop

# Target type
data modify storage vdv_iris:output Target set value "BLOCK"

# Targeted block
data modify storage vdv_iris:output TargetedBlock set value [0, 0, 0]
execute store result storage vdv_iris:output TargetedBlock[0] int 1 run scoreboard players get $[x] vdv_iris
execute store result storage vdv_iris:output TargetedBlock[1] int 1 run scoreboard players get $[y] vdv_iris
execute store result storage vdv_iris:output TargetedBlock[2] int 1 run scoreboard players get $[z] vdv_iris

# Placing position
data modify storage vdv_iris:output PlacingPosition set value [0, 0, 0]
execute store result storage vdv_iris:output PlacingPosition[0] int 1 run scoreboard players get $previous_[x] vdv_iris
execute store result storage vdv_iris:output PlacingPosition[1] int 1 run scoreboard players get $previous_[y] vdv_iris
execute store result storage vdv_iris:output PlacingPosition[2] int 1 run scoreboard players get $previous_[z] vdv_iris

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
scoreboard players operation $block_distance vdv_iris *= $1000 vdv_iris
scoreboard players operation $total_distance vdv_iris += $block_distance vdv_iris
execute store result storage vdv_iris:output Distance double 0.000001 run scoreboard players get $total_distance vdv_iris

# Exit loop
scoreboard players operation $depth vdv_iris = $max_depth vdv_iris