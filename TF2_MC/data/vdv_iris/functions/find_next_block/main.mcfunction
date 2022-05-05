#> vdv_iris:find_next_block/main
#
# Calculates the position of the ray when it hits the next block
#
# @within vdv_iris:raycast/loop
# @output
#	score $[x] vdv_iris
#		The integer x coordinate of the next position
#	score $[y] vdv_iris
#		The integer y coordinate of the next position
#	score $[z] vdv_iris
#		The integer z coordinate of the next position
#	score ${x} vdv_iris
#		The fractional x coordinate of the next position, represented by an integer between 0 and 1000000
#	score ${y} vdv_iris
#		The fractional y coordinate of the next position, represented by an integer between 0 and 1000000
#	score ${z} vdv_iris
#		The fractional z coordinate of the next position, represented by an integer between 0 and 1000000
#	score $previous_[x] vdv_iris
#		The integer x coordinate of the position before it is updated by this function
#	score $previous_[y] vdv_iris
#		The integer y coordinate of the position before it is updated by this function
#	score $previous_[z] vdv_iris
#		The integer z coordinate of the position before it is updated by this function

#> Find whether the next block is adjacent on the X axis, on the Y axis or on the Z axis

# See what distance the ray needs to travel to hit the next block on the X axis
execute if score $dx vdv_iris matches 0.. run scoreboard players set $distance_to_next_block_on_x_axis vdv_iris 1000000000
execute if score $dx vdv_iris matches ..-1 run scoreboard players set $distance_to_next_block_on_x_axis vdv_iris 0
scoreboard players operation ${x}*1000 vdv_iris = ${x} vdv_iris
scoreboard players operation ${x}*1000 vdv_iris *= $1000 vdv_iris
scoreboard players operation $distance_to_next_block_on_x_axis vdv_iris -= ${x}*1000 vdv_iris
scoreboard players operation $distance_to_next_block_on_x_axis vdv_iris /= $dx vdv_iris

# See what distance the ray needs to travel to hit the next block on the Y axis
execute if score $dy vdv_iris matches 0.. run scoreboard players set $distance_to_next_block_on_y_axis vdv_iris 1000000000
execute if score $dy vdv_iris matches ..-1 run scoreboard players set $distance_to_next_block_on_y_axis vdv_iris 0
scoreboard players operation ${y}*1000 vdv_iris = ${y} vdv_iris
scoreboard players operation ${y}*1000 vdv_iris *= $1000 vdv_iris
scoreboard players operation $distance_to_next_block_on_y_axis vdv_iris -= ${y}*1000 vdv_iris
scoreboard players operation $distance_to_next_block_on_y_axis vdv_iris /= $dy vdv_iris

# See what distance the ray needs to travel to hit the next block on the Z axis
execute if score $dz vdv_iris matches 0.. run scoreboard players set $distance_to_next_block_on_z_axis vdv_iris 1000000000
execute if score $dz vdv_iris matches ..-1 run scoreboard players set $distance_to_next_block_on_z_axis vdv_iris 0
scoreboard players operation ${z}*1000 vdv_iris = ${z} vdv_iris
scoreboard players operation ${z}*1000 vdv_iris *= $1000 vdv_iris
scoreboard players operation $distance_to_next_block_on_z_axis vdv_iris -= ${z}*1000 vdv_iris
scoreboard players operation $distance_to_next_block_on_z_axis vdv_iris /= $dz vdv_iris

# Determine which distance is the shortest
execute if score $distance_to_next_block_on_x_axis vdv_iris <= $distance_to_next_block_on_y_axis vdv_iris if score $distance_to_next_block_on_x_axis vdv_iris <= $distance_to_next_block_on_z_axis vdv_iris run data merge storage vdv_iris:data {ShortestDistanceAxis: "x"}
execute if score $distance_to_next_block_on_y_axis vdv_iris <= $distance_to_next_block_on_x_axis vdv_iris if score $distance_to_next_block_on_y_axis vdv_iris <= $distance_to_next_block_on_z_axis vdv_iris run data merge storage vdv_iris:data {ShortestDistanceAxis: "y"}
execute if score $distance_to_next_block_on_z_axis vdv_iris <= $distance_to_next_block_on_x_axis vdv_iris if score $distance_to_next_block_on_z_axis vdv_iris <= $distance_to_next_block_on_y_axis vdv_iris run data merge storage vdv_iris:data {ShortestDistanceAxis: "z"}

#> Update position to the next block

# Save previous coordinates
scoreboard players operation $previous_[x] vdv_iris = $[x] vdv_iris
scoreboard players operation $previous_[y] vdv_iris = $[y] vdv_iris
scoreboard players operation $previous_[z] vdv_iris = $[z] vdv_iris

# Depending on where the ray exits the current block, find the next block and the position of the ray when it exits the current block
execute if data storage vdv_iris:data {ShortestDistanceAxis: "x"} run function vdv_iris:find_next_block/x
execute if data storage vdv_iris:data {ShortestDistanceAxis: "y"} run function vdv_iris:find_next_block/y
execute if data storage vdv_iris:data {ShortestDistanceAxis: "z"} run function vdv_iris:find_next_block/z

# Add distance to total distance
scoreboard players operation $distance_to_next_block vdv_iris *= $1000 vdv_iris
scoreboard players operation $total_distance vdv_iris += $distance_to_next_block vdv_iris
scoreboard players operation $distance_to_next_block vdv_iris /= $1000 vdv_iris