#> vdv_iris:find_next_block/z
#
# Calculates the position of the ray when it hits the next block, assuming that the next block is north or south of the current block
#
# @within vdv_iris:find_next_block/main

# Set the distance to the next block on the z axis as the distance to the next block
scoreboard players operation $distance_to_next_block vdv_iris = $distance_to_next_block_on_z_axis vdv_iris

# Move z position at the border of the block
execute if score $dz vdv_iris matches 0.. run scoreboard players add $[z] vdv_iris 1
execute if score $dz vdv_iris matches 0.. run scoreboard players set ${z} vdv_iris 0
execute if score $dz vdv_iris matches ..-1 run scoreboard players remove $[z] vdv_iris 1
execute if score $dz vdv_iris matches ..-1 run scoreboard players set ${z} vdv_iris 1000000

# Calculate new x position
scoreboard players operation $Dx vdv_iris = $distance_to_next_block vdv_iris
scoreboard players operation $Dx vdv_iris *= $dx vdv_iris
scoreboard players operation $Dx vdv_iris /= $1000 vdv_iris
scoreboard players operation ${x} vdv_iris += $Dx vdv_iris
scoreboard players reset $Dx vdv_iris

# Calculate new y position
scoreboard players operation $Dy vdv_iris = $distance_to_next_block vdv_iris
scoreboard players operation $Dy vdv_iris *= $dy vdv_iris
scoreboard players operation $Dy vdv_iris /= $1000 vdv_iris
scoreboard players operation ${y} vdv_iris += $Dy vdv_iris
scoreboard players reset $Dy vdv_iris