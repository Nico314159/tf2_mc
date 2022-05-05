#> vdv_iris:find_next_block/x
#
# Calculates the position of the ray when it hits the next block, assuming that the next block is west or east of the current block
#
# @within vdv_iris:find_next_block/main

# Set the distance to the next block on the x axis as the distance to the next block
scoreboard players operation $distance_to_next_block vdv_iris = $distance_to_next_block_on_x_axis vdv_iris

# Move x position at the border of the block
execute if score $dx vdv_iris matches 0.. run scoreboard players add $[x] vdv_iris 1
execute if score $dx vdv_iris matches 0.. run scoreboard players set ${x} vdv_iris 0
execute if score $dx vdv_iris matches ..-1 run scoreboard players remove $[x] vdv_iris 1
execute if score $dx vdv_iris matches ..-1 run scoreboard players set ${x} vdv_iris 1000000

# Calculate new y position
scoreboard players operation $Dy vdv_iris = $distance_to_next_block vdv_iris
scoreboard players operation $Dy vdv_iris *= $dy vdv_iris
scoreboard players operation $Dy vdv_iris /= $1000 vdv_iris
scoreboard players operation ${y} vdv_iris += $Dy vdv_iris
scoreboard players reset $Dy vdv_iris

# Calculate new z position
scoreboard players operation $Dz vdv_iris = $distance_to_next_block vdv_iris
scoreboard players operation $Dz vdv_iris *= $dz vdv_iris
scoreboard players operation $Dz vdv_iris /= $1000 vdv_iris
scoreboard players operation ${z} vdv_iris += $Dz vdv_iris
scoreboard players reset $Dz vdv_iris