#> vdv_iris:get_target
#
# Returns the position of the block targeted
# To tell where a player is looking, anchoring to the eye position is needed: execute as <player> at @s anchored eyes positioned ^ ^ ^ run function vdv_iris:get_target_block
#
# @public
# @context a position and a rotation
# @input
#	storage vdv_iris:input
#		TargetEntities: byte
#			Whether or not to look for entities. Defaults to false.
#		MaxRecursionDepth: int
#			How many blocks to traverse before giving up. Defaults to 16.
# @output
#	score $total_distance vdv_iris
#		The distance travelled by the ray before it hits a block. 1,000,000 corresponds to one block. Unset if the maximum recursion depth is reached (i.e. if the ray travels at least 20 blocks).
#	storage vdv_iris:output
#		Target: string
#			"BLOCK" if the ray hits a block, "ENTITY" if the ray hits an entity, "NONE" if the ray hits nothing.
#		Distance: double
#			How long the ray travels before hitting an obstacle.
#		TargetedBlock: int[]
#			The integer coordinates of the block that the ray finds itself in when it hits something (i.e. the "targeted block"). Unset if the ray hits an entity or if no block is found.
#		TargetedEntity.Pos: float[]
#			The position of the targeted entity. Unset if the ray hits a block or if no entity is found.
#		TargetedEntity.UUID: int[]
#			The UUID of the targeted entity. Unset if the ray hits a block or if no entity is found.
#		ContactSurface: double[]
#			The surface of the block or entity the ray hits (six coordinates between 0 and 1000000, where 0 0 0 and 1000000 1000000 1000000 are opposite corners of the block). Unset if no block or entity is found.
#		ContactCoordinates: double[]
#			The exact position where the ray hits something within the targeted block (three coordinates between 0 and 1000000, where 0 0 0 and 1000000 1000000 1000000 are opposite corners of the block). Unset if no block or entity is found.
#		PlacingPosition: int[]
#			The integer coordinates of the block before the ray hits something (i.e. where a block would be placed, if a player were to place a block). Unset if the ray hits an entity or if no block is found.

# Reset tags, scores and storage
kill @e[type=minecraft:marker, tag=vdv_iris.ray]
tag @e[type=!#vdv_iris:ignore] remove vdv_iris.target
data modify storage vdv_iris:output Target set value "NONE"
data remove storage vdv_iris:output Distance
data remove storage vdv_iris:output TargetedBlock
data remove storage vdv_iris:output TargetedEntity
data remove storage vdv_iris:output ContactSurface
data remove storage vdv_iris:output ContactCoordinates
data remove storage vdv_iris:output PlacingPosition
scoreboard players set $depth vdv_iris 0
scoreboard players set $total_distance vdv_iris 0
scoreboard players set $ray_hits_block vdv_iris 0
scoreboard players set $ray_hits_entity vdv_iris 0
scoreboard players set $ray_hits_surface vdv_iris 0

# Get coordinates and rotation of the initial position
function vdv_iris:get_coordinates/main
summon minecraft:marker ~ ~ ~ {Tags: ["vdv_iris", "vdv_iris.ray"]}

# Start the loop
tag @s add vdv_iris.executing
execute store result score $max_depth vdv_iris run data get storage vdv_iris:input MaxRecursionDepth
execute as @e[type=minecraft:marker, tag=vdv_iris.ray] at @s run function vdv_iris:raycast/loop
tag @s remove vdv_iris.executing