#> vdv_iris:get_hitbox/block
#
# Returns a list of surfaces of the current blockg
# TODO Organise non-cubic blocks in a block tag tree for logarithmic search
#
# @within vdv_iris:raycast/on_block_found
# @output
#	storage vdv_iris:data Surfaces
#		Top: int[][]
#			A list of rectangular surfaces visible from above. Each surface is defined by six numbers, two sets of coordinates corresponding to opposite corners of the surface.
#		Bottom: int[][]
#			A list of rectangular surfaces visible from below. Each surface is defined by six numbers, two sets of coordinates corresponding to opposite corners of the surface.
#		East: int[][]
#			A list of rectangular surfaces facing east. Each surface is defined by six numbers, two sets of coordinates corresponding to opposite corners of the surface.
#		West: int[][]
#			A list of rectangular surfaces facing west. Each surface is defined by six numbers, two sets of coordinates corresponding to opposite corners of the surface.
#		North: int[][]
#			A list of rectangular surfaces facing north. Each surface is defined by six numbers, two sets of coordinates corresponding to opposite corners of the surface.
#		South: int[][]
#			A list of rectangular surfaces facing south. Each surface is defined by six numbers, two sets of coordinates corresponding to opposite corners of the surface.

execute store result score $block.is_cubic vdv_iris store result score $block.is_anvil vdv_iris store result score $block.is_attached_stem vdv_iris store result score $block.is_bed vdv_iris store result score $block.is_beetroots vdv_iris store result score $block.is_brewing_stand vdv_iris store result score $block.is_button vdv_iris store result score $block.is_cactus vdv_iris store result score $block.is_campfire vdv_iris store result score $block.is_carpet vdv_iris store result score $block.is_cauldron vdv_iris store result score $block.is_chest vdv_iris store result score $block.is_composter vdv_iris store result score $block.is_conduit vdv_iris store result score $block.is_door vdv_iris store result score $block.is_farmland vdv_iris store result score $block.is_fence vdv_iris store result score $block.is_fence_gate vdv_iris store result score $block.is_grass vdv_iris store result score $block.is_mushroom vdv_iris store result score $block.is_pressure_plate vdv_iris store result score $block.is_saplings vdv_iris store result score $block.is_slab vdv_iris store result score $block.is_special_rail vdv_iris store result score $block.is_stairs vdv_iris store result score $block.is_standing_sign_or_banner vdv_iris store result score $block.is_trapdoor vdv_iris store result score $block.is_wall vdv_iris store result score $block.is_wall_sign vdv_iris run scoreboard players set $block_found vdv_iris 0

# Anvils
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_anvil vdv_iris if block ~ ~ ~ #minecraft:anvil
execute if score $block.is_anvil vdv_iris matches 1 run function vdv_iris:get_hitbox/block/anvils

# Attached stems
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_attached_stem vdv_iris if block ~ ~ ~ #vdv_iris:attached_stems
execute if score $block.is_attached_stem vdv_iris matches 1 run function vdv_iris:get_hitbox/block/attached_stems

# Beds
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_bed vdv_iris if block ~ ~ ~ #minecraft:beds
execute if score $block.is_bed vdv_iris matches 1 run function vdv_iris:get_hitbox/block/beds

# Beetroots
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_beetroots vdv_iris if block ~ ~ ~ minecraft:beetroots
execute if score $block.is_beetroots vdv_iris matches 1 run function vdv_iris:get_hitbox/block/beetroots

# Brewing stands
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_brewing_stand vdv_iris if block ~ ~ ~ minecraft:brewing_stand
execute if score $block.is_brewing_stand vdv_iris matches 1 run function vdv_iris:get_hitbox/block/brewing_stand

# Buttons
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_button vdv_iris if block ~ ~ ~ #minecraft:buttons
execute if score $block.is_button vdv_iris matches 1 run function vdv_iris:get_hitbox/block/buttons

# Cactus, dragon eggs
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_cactus vdv_iris if block ~ ~ ~ #vdv_iris:cactus_shaped
execute if score $block.is_cactus vdv_iris matches 1 run function vdv_iris:get_hitbox/block/cactus

# Campfires, soul campfires
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_campfire vdv_iris if block ~ ~ ~ #minecraft:campfires
execute if score $block.is_campfire vdv_iris matches 1 run function vdv_iris:get_hitbox/block/campfires

# Carpets
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_carpet vdv_iris if block ~ ~ ~ #minecraft:carpets
execute if score $block.is_carpet vdv_iris matches 1 run function vdv_iris:get_hitbox/block/carpets

# Cauldrons
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_cauldron vdv_iris if block ~ ~ ~ #minecraft:cauldrons
execute if score $block.is_cauldron vdv_iris matches 1 run function vdv_iris:get_hitbox/block/cauldrons

# Chests, trapped chests
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_chest vdv_iris if block ~ ~ ~ #vdv_iris:chests
execute if score $block.is_chest vdv_iris matches 1 run function vdv_iris:get_hitbox/block/chest

# Composters
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_composter vdv_iris if block ~ ~ ~ minecraft:composter
execute if score $block.is_composter vdv_iris matches 1 run function vdv_iris:get_hitbox/block/composter

# Conduits
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_conduit vdv_iris if block ~ ~ ~ minecraft:conduit
execute if score $block.is_conduit vdv_iris matches 1 run function vdv_iris:get_hitbox/block/conduit

# Doors
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_door vdv_iris if block ~ ~ ~ #minecraft:doors
execute if score $block.is_door vdv_iris matches 1 run function vdv_iris:get_hitbox/block/doors

# Farmland, dirt paths
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_farmland vdv_iris if block ~ ~ ~ #vdv_iris:farmland_shaped
execute if score $block.is_farmland vdv_iris matches 1 run function vdv_iris:get_hitbox/block/farmland

# Fences
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_fence vdv_iris if block ~ ~ ~ #minecraft:fences
execute if score $block.is_fence vdv_iris matches 1 run function vdv_iris:get_hitbox/block/fences

# Fence gates
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_fence_gate vdv_iris if block ~ ~ ~ #minecraft:fence_gates
execute if score $block.is_fence_gate vdv_iris matches 1 run function vdv_iris:get_hitbox/block/fence_gates

# Grass, dead bushes, ferns
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_grass vdv_iris if block ~ ~ ~ #vdv_iris:grass_shaped
execute if score $block.is_grass vdv_iris matches 1 run function vdv_iris:get_hitbox/block/grass

# Brown mushrooms, red mushrooms, flower pots, potted plants
execute if score $block.found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_mushroom vdv_iris if block ~ ~ ~ #vdv_iris:mushroom_shaped
execute if score $block.is_mushroom vdv_iris matches 1 run function vdv_iris:get_hitbox/block/mushrooms

# Pressure plates
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_pressure_plate vdv_iris if block ~ ~ ~ #minecraft:pressure_plates
execute if score $block.is_pressure_plate vdv_iris matches 1 run function vdv_iris:get_hitbox/block/pressure_plates

# Saplings
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_sapling vdv_iris if block ~ ~ ~ #minecraft:saplings
execute if score $block.is_sapling vdv_iris matches 1 run function vdv_iris:get_hitbox/block/saplings

# Stairs
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_stairs vdv_iris if block ~ ~ ~ #minecraft:stairs
execute if score $block.is_stairs vdv_iris matches 1 run function vdv_iris:get_hitbox/block/stairs

# Slabs
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_slab vdv_iris if block ~ ~ ~ #minecraft:slabs
execute if score $block.is_slab vdv_iris matches 1 run function vdv_iris:get_hitbox/block/slabs

# Activator rails, detector rails, powered rails
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_special_rail vdv_iris if block ~ ~ ~ #vdv_iris:special_rails
execute if score $block.is_special_rail vdv_iris matches 1 run function vdv_iris:get_hitbox/block/special_rails

# Standing signs, banners
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_standing_sign_or_banner vdv_iris if block ~ ~ ~ #vdv_iris:standing_signs_and_banners
execute if score $block.is_standing_sign_or_banner vdv_iris matches 1 run function vdv_iris:get_hitbox/block/standing_signs_and_banners

# Trapdoors
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_trapdoor vdv_iris if block ~ ~ ~ #minecraft:trapdoors
execute if score $block.is_trapdoor vdv_iris matches 1 run function vdv_iris:get_hitbox/block/trapdoors

# Walls
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_wall vdv_iris if block ~ ~ ~ #minecraft:walls
execute if score $block.is_wall vdv_iris matches 1 run function vdv_iris:get_hitbox/block/walls

# Wall signs
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris store success score $block.is_wall_sign vdv_iris if block ~ ~ ~ #minecraft:wall_signs
execute if score $block.is_wall_sign vdv_iris matches 1 run function vdv_iris:get_hitbox/block/wall_signs

# 1x1x1 cubic blocks (all other blocks)
execute if score $block_found vdv_iris matches 0 store success score $block_found vdv_iris run scoreboard players set $block.is_cubic vdv_iris 1
execute if score $block.is_cubic vdv_iris matches 1 run function vdv_iris:get_hitbox/block/cubic
