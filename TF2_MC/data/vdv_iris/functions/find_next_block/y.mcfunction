#> vdv_iris:find_next_block/y
#
# Calculates the position of the ray when it hits the next block, assuming that the next block is above or below the current block
#
# @within vdv_iris:find_next_block/main

# Set the distance to the next block on the y axis as the distance to the next block
scoreboard players operation $distance_to_next_block vdv_iris = $distance_to_next_block_on_y_axis vdv_iris

# Move y position at the border of the block
execute if score $dy vdv_iris matches 0.. run scoreboard players add $[y] vdv_iris 1
execute if score $dy vdv_iris matches 0.. run scoreboard players set ${y} vdv_iris 0
execute if score $dy vdv_iris matches ..-1 run scoreboard players remove $[y] vdv_iris 1
execute if score $dy vdv_iris matches ..-1 run scoreboard players set ${y} vdv_iris 1000000

# Calculate new x position
scoreboard players operation $Dx vdv_iris = $distance_to_next_block vdv_iris
scoreboard players operation $Dx vdv_iris *= $dx vdv_iris
scoreboard players operation $Dx vdv_iris /= $1000 vdv_iris
scoreboard players operation ${x} vdv_iris += $Dx vdv_iris
scoreboard players reset $Dx vdv_iris

# Calculate new z position
scoreboard players operation $Dz vdv_iris = $distance_to_next_block vdv_iris
scoreboard players operation $Dz vdv_iris *= $dz vdv_iris
scoreboard players operation $Dz vdv_iris /= $1000 vdv_iris
scoreboard players operation ${z} vdv_iris += $Dz vdv_iris
scoreboard players reset $Dz vdv_iris