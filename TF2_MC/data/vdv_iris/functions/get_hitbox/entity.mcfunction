#> vdv_iris:get_hitbox/entity
#
# Returns a list of surfaces of the executing entity
#
# @within vdv_iris:raycast/on_entity_found
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

execute store result score $entity.is_zombie_like vdv_iris store result score $entity.is_baby_zombie_like vdv_iris store result score $entity.is_cow vdv_iris store result score $entity.is_baby_cow vdv_iris store result score $entity.is_player_like vdv_iris store result score $entity.is_horse vdv_iris run scoreboard players set $entity_found vdv_iris 0

# Armour stands
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_armor_stand vdv_iris if entity @s[type=minecraft:armor_stand]
execute if score $entity.is_armor_stand vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/armor_stand

# Axolotls
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_axolotl vdv_iris if entity @s[type=minecraft:axolotl]
execute if score $entity.is_axolotl vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/axolotl

# Bats, parrots
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_bat_like vdv_iris if entity @s[type=#vdv_iris:bat_like]
execute if score $entity.is_bat_like vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/bat_like

# Bees
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_bee vdv_iris if entity @s[type=minecraft:bee]
execute if score $entity.is_bee vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/bee

# Boats
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_boat vdv_iris if entity @s[type=minecraft:boat]
execute if score $entity.is_boat vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/boat

# Cats, foxes, ocelots
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_cat_like vdv_iris if entity @s[type=#vdv_iris:cat_like]
execute if score $entity.is_cat_like vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/cat_like

# Cave spiders
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_cave_spider vdv_iris if entity @s[type=minecraft:cave_spider]
execute if score $entity.is_cave_spider vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/cave_spider

# Chickens
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_chicken vdv_iris if entity @s[type=minecraft:chicken]
execute if score $entity.is_chicken vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/chicken

# Cods
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_cod vdv_iris if entity @s[type=minecraft:cod]
execute if score $entity.is_cod vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/cod

# Cows and mooshrooms
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_cow vdv_iris if entity @s[type=#vdv_iris:cows]
execute if score $entity.is_cow vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/cow

# Creepers
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_creeper vdv_iris if entity @s[type=minecraft:creeper]
execute if score $entity.is_creeper vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/creeper

# Dolphins
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_dolphin vdv_iris if entity @s[type=minecraft:dolphin]
execute if score $entity.is_dolphin vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/dolphin

# Donkeys
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_donkey vdv_iris if entity @s[type=minecraft:donkey]
execute if score $entity.is_donkey vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/donkey

# Elder guardians
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_elder_guardian vdv_iris if entity @s[type=minecraft:elder_guardian]
execute if score $entity.is_elder_guardian vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/elder_guardian

# End crystals
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_end_crystal vdv_iris if entity @s[type=minecraft:end_crystal]
execute if score $entity.is_end_crystal vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/end_crystal

# Endermen
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_enderman vdv_iris if entity @s[type=minecraft:enderman]
execute if score $entity.is_enderman vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/enderman

# Endermites and silverfish
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_endermite_like vdv_iris if entity @s[type=#vdv_iris:endermite_like]
execute if score $entity.is_endermite_like vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/endermite_like

# Falling blocks and primed TNT
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_falling_block_like vdv_iris if entity @s[type=#vdv_iris:falling_block_like]
execute if score $entity.is_falling_block_like vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/falling_block_like

# Ghasts
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_ghast vdv_iris if entity @s[type=minecraft:ghast]
execute if score $entity.is_ghast vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/ghast

# Giants
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_giant vdv_iris if entity @s[type=minecraft:giant]
execute if score $entity.is_giant vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/giant

# Guardians
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_guardian vdv_iris if entity @s[type=minecraft:guardian]
execute if score $entity.is_guardian vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/guardian

# Hoglins and zoglins
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_hoglin vdv_iris if entity @s[type=#vdv_iris:hoglins]
execute if score $entity.is_hoglin vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/hoglin

# Horses and mules
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_horse vdv_iris if entity @s[type=#vdv_iris:horses]
execute if score $entity.is_horse vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/horse

# Iron golems
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_iron_golem vdv_iris if entity @s[type=minecraft:iron_golem]
execute if score $entity.is_iron_golem vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/iron_golem

# Leash knots
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_leash_knot vdv_iris if entity @s[type=minecraft:leash_knot]
execute if score $entity.is_leash_knot vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/leash_knot

# Llamas and trader llamas
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_llama vdv_iris if entity @s[type=#vdv_iris:llamas]
execute if score $entity.is_llama vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/llama

# Minecarts (with chests, with command blocks, with furnaces, with hoppers, with spawners, with TNT)
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_minecart vdv_iris if entity @s[type=#vdv_iris:minecarts]
execute if score $entity.is_minecart vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/minecart

# Pandas
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_panda vdv_iris if entity @s[type=minecraft:panda]
execute if score $entity.is_panda vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/panda

# Phantoms
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_phantom vdv_iris if entity @s[type=minecraft:phantom]
execute if score $entity.is_phantom vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/phantom

# Pigs
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_pig vdv_iris if entity @s[type=minecraft:pig]
execute if score $entity.is_pig vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/pig

# Pufferfish
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_pufferfish vdv_iris if entity @s[type=minecraft:pufferfish]
execute if score $entity.is_pufferfish vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/pufferfish

# Players and blazes
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_player_like vdv_iris if entity @s[type=#vdv_iris:player_like, predicate=!vdv_iris:swimming, predicate=!vdv_iris:sneaking]
execute if score $entity.is_player_like vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/player_like

# Polar bears
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_polar_bear vdv_iris if entity @s[type=minecraft:polar_bear]
execute if score $entity.is_polar_bear vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/polar_bear

# Rabbits
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_rabbit vdv_iris if entity @s[type=minecraft:rabbit]
execute if score $entity.is_rabbit vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/rabbit

# Ravagers
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_ravager vdv_iris if entity @s[type=minecraft:ravager]
execute if score $entity.is_ravager vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/ravager

# Salmons
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_salmon vdv_iris if entity @s[type=minecraft:salmon]
execute if score $entity.is_salmon vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/salmon

# Sheep and goats
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_sheep_like vdv_iris if entity @s[type=#vdv_iris:sheep_like]
execute if score $entity.is_sheep_like vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/sheep_like

# Shulkers
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_shulker vdv_iris if entity @s[type=minecraft:shulker]
execute if score $entity.is_shulker vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/shulker

# Skeletons and strays
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_skeleton vdv_iris if entity @s[type=#minecraft:skeletons]
execute if score $entity.is_skeleton vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/skeleton

# Slimes and magma cubes
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_slime_like vdv_iris if entity @s[type=#vdv_iris:slime_like]
execute if score $entity.is_slime_like vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/slime_like

# Snow golems
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_snow_golem vdv_iris if entity @s[type=minecraft:snow_golem]
execute if score $entity.is_snow_golem vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/snow_golem

# Striders
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_strider vdv_iris if entity @s[type=minecraft:strider]
execute if score $entity.is_strider vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/strider

# Squids and glow squids
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_squid vdv_iris if entity @s[type=#vdv_iris:squids]
execute if score $entity.is_squid vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/squid

# Spiders
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_spider vdv_iris if entity @s[type=minecraft:spider]
execute if score $entity.is_spider vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/spider

# Tropical fish
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_tropical_fish vdv_iris if entity @s[type=minecraft:tropical_fish]
execute if score $entity.is_tropical_fish vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/tropical_fish

# Turtles
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_turtle vdv_iris if entity @s[type=minecraft:turtle]
execute if score $entity.is_turtle vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/turtle

# Vexes
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_vex vdv_iris if entity @s[type=minecraft:vex]
execute if score $entity.is_vex vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/vex

# Withers
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_wither vdv_iris if entity @s[type=minecraft:wither]
execute if score $entity.is_wither vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/wither

# Wither skeletons
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_wither_skeleton vdv_iris if entity @s[type=minecraft:wither_skeleton]
execute if score $entity.is_wither_skeleton vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/wither_skeleton

# Wolves
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_wolf vdv_iris if entity @s[type=minecraft:wolf]
execute if score $entity.is_wolf vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/wolf

# Drowned, evoker, husk, illusioner, piglin, piglin_brute, pillager, villager, vindicator, wandering trader, witch, zombie, zombie villager, zombified piglin
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_zombie_like vdv_iris if entity @s[type=#vdv_iris:zombie_like, predicate=!vdv_iris:swimming]
execute if score $entity.is_zombie_like vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/zombie_like

# Get the entity's coordinates
scoreboard players operation $save_[x] vdv_iris = $[x] vdv_iris
scoreboard players operation $save_[y] vdv_iris = $[y] vdv_iris
scoreboard players operation $save_[z] vdv_iris = $[z] vdv_iris
scoreboard players operation $save_{x} vdv_iris = ${x} vdv_iris
scoreboard players operation $save_{y} vdv_iris = ${y} vdv_iris
scoreboard players operation $save_{z} vdv_iris = ${z} vdv_iris
scoreboard players operation $save_dx vdv_iris = $dx vdv_iris
scoreboard players operation $save_dy vdv_iris = $dy vdv_iris
scoreboard players operation $save_dz vdv_iris = $dz vdv_iris
execute at @s run function vdv_iris:get_coordinates/main
scoreboard players operation $entity_[x] vdv_iris = $[x] vdv_iris
scoreboard players operation $entity_[y] vdv_iris = $[y] vdv_iris
scoreboard players operation $entity_[z] vdv_iris = $[z] vdv_iris
scoreboard players operation $entity_{x} vdv_iris = ${x} vdv_iris
scoreboard players operation $entity_{y} vdv_iris = ${y} vdv_iris
scoreboard players operation $entity_{z} vdv_iris = ${z} vdv_iris
scoreboard players operation $[x] vdv_iris = $save_[x] vdv_iris
scoreboard players operation $[y] vdv_iris = $save_[y] vdv_iris
scoreboard players operation $[z] vdv_iris = $save_[z] vdv_iris
scoreboard players operation ${x} vdv_iris = $save_{x} vdv_iris
scoreboard players operation ${y} vdv_iris = $save_{y} vdv_iris
scoreboard players operation ${z} vdv_iris = $save_{z} vdv_iris
scoreboard players operation $dx vdv_iris = $save_dx vdv_iris
scoreboard players operation $dy vdv_iris = $save_dy vdv_iris
scoreboard players operation $dz vdv_iris = $save_dz vdv_iris

# Save how many blocks away the entity is from the block origin
scoreboard players operation $entity_dx vdv_iris = $entity_[x] vdv_iris
scoreboard players operation $entity_dx vdv_iris -= $[x] vdv_iris
scoreboard players operation $entity_dx vdv_iris *= $1000000 vdv_iris
scoreboard players operation $entity_dx vdv_iris += $entity_{x} vdv_iris
scoreboard players operation $entity_dy vdv_iris = $entity_[y] vdv_iris
scoreboard players operation $entity_dy vdv_iris -= $[y] vdv_iris
scoreboard players operation $entity_dy vdv_iris *= $1000000 vdv_iris
scoreboard players operation $entity_dy vdv_iris += $entity_{y} vdv_iris
scoreboard players operation $entity_dz vdv_iris = $entity_[z] vdv_iris
scoreboard players operation $entity_dz vdv_iris -= $[z] vdv_iris
scoreboard players operation $entity_dz vdv_iris *= $1000000 vdv_iris
scoreboard players operation $entity_dz vdv_iris += $entity_{z} vdv_iris

# Get the coordinates of the bounding box
scoreboard players operation $entity_x0 vdv_iris = $entity_dx vdv_iris
scoreboard players operation $entity_x0 vdv_iris -= $entity_half_width vdv_iris
execute if score $entity_x0 vdv_iris matches ..0 run scoreboard players set $entity_x0 vdv_iris 0
scoreboard players operation $entity_y0 vdv_iris = $entity_dy vdv_iris
execute if score $entity_y0 vdv_iris matches ..0 run scoreboard players set $entity_y0 vdv_iris 0
scoreboard players operation $entity_z0 vdv_iris = $entity_dz vdv_iris
scoreboard players operation $entity_z0 vdv_iris -= $entity_half_width vdv_iris
execute if score $entity_z0 vdv_iris matches ..0 run scoreboard players set $entity_z0 vdv_iris 0
scoreboard players operation $entity_x1 vdv_iris = $entity_dx vdv_iris
scoreboard players operation $entity_x1 vdv_iris += $entity_half_width vdv_iris
execute if score $entity_x1 vdv_iris matches 1000000.. run scoreboard players set $entity_x1 vdv_iris 1000000
scoreboard players operation $entity_y1 vdv_iris = $entity_dy vdv_iris
scoreboard players operation $entity_y1 vdv_iris += $entity_height vdv_iris
execute if score $entity_y1 vdv_iris matches 1000000.. run scoreboard players set $entity_y1 vdv_iris 1000000
scoreboard players operation $entity_z1 vdv_iris = $entity_dz vdv_iris
scoreboard players operation $entity_z1 vdv_iris += $entity_half_width vdv_iris
execute if score $entity_z1 vdv_iris matches 1000000.. run scoreboard players set $entity_z1 vdv_iris 1000000

# Store these coordinates to storage
data modify storage vdv_iris:data Surfaces.Top append value [0, 0, 0, 0, 0, 0]
data modify storage vdv_iris:data Surfaces.Bottom append value [0, 0, 0, 0, 0, 0]
data modify storage vdv_iris:data Surfaces.West append value [0, 0, 0, 0, 0, 0]
data modify storage vdv_iris:data Surfaces.East append value [0, 0, 0, 0, 0, 0]
data modify storage vdv_iris:data Surfaces.North append value [0, 0, 0, 0, 0, 0]
data modify storage vdv_iris:data Surfaces.South append value [0, 0, 0, 0, 0, 0]

execute store result storage vdv_iris:data Surfaces.Top[-1][0] int 1 run scoreboard players get $entity_x0 vdv_iris
execute store result storage vdv_iris:data Surfaces.Top[-1][1] int 1 run scoreboard players get $entity_y1 vdv_iris
execute store result storage vdv_iris:data Surfaces.Top[-1][2] int 1 run scoreboard players get $entity_z0 vdv_iris
execute store result storage vdv_iris:data Surfaces.Top[-1][3] int 1 run scoreboard players get $entity_x1 vdv_iris
execute store result storage vdv_iris:data Surfaces.Top[-1][4] int 1 run scoreboard players get $entity_y1 vdv_iris
execute store result storage vdv_iris:data Surfaces.Top[-1][5] int 1 run scoreboard players get $entity_z1 vdv_iris

execute store result storage vdv_iris:data Surfaces.Bottom[-1][0] int 1 run scoreboard players get $entity_x0 vdv_iris
execute store result storage vdv_iris:data Surfaces.Bottom[-1][1] int 1 run scoreboard players get $entity_y0 vdv_iris
execute store result storage vdv_iris:data Surfaces.Bottom[-1][2] int 1 run scoreboard players get $entity_z0 vdv_iris
execute store result storage vdv_iris:data Surfaces.Bottom[-1][3] int 1 run scoreboard players get $entity_x1 vdv_iris
execute store result storage vdv_iris:data Surfaces.Bottom[-1][4] int 1 run scoreboard players get $entity_y0 vdv_iris
execute store result storage vdv_iris:data Surfaces.Bottom[-1][5] int 1 run scoreboard players get $entity_z1 vdv_iris

execute store result storage vdv_iris:data Surfaces.West[-1][0] int 1 run scoreboard players get $entity_x0 vdv_iris
execute store result storage vdv_iris:data Surfaces.West[-1][1] int 1 run scoreboard players get $entity_y0 vdv_iris
execute store result storage vdv_iris:data Surfaces.West[-1][2] int 1 run scoreboard players get $entity_z0 vdv_iris
execute store result storage vdv_iris:data Surfaces.West[-1][3] int 1 run scoreboard players get $entity_x0 vdv_iris
execute store result storage vdv_iris:data Surfaces.West[-1][4] int 1 run scoreboard players get $entity_y1 vdv_iris
execute store result storage vdv_iris:data Surfaces.West[-1][5] int 1 run scoreboard players get $entity_z1 vdv_iris

execute store result storage vdv_iris:data Surfaces.East[-1][0] int 1 run scoreboard players get $entity_x1 vdv_iris
execute store result storage vdv_iris:data Surfaces.East[-1][1] int 1 run scoreboard players get $entity_y0 vdv_iris
execute store result storage vdv_iris:data Surfaces.East[-1][2] int 1 run scoreboard players get $entity_z0 vdv_iris
execute store result storage vdv_iris:data Surfaces.East[-1][3] int 1 run scoreboard players get $entity_x1 vdv_iris
execute store result storage vdv_iris:data Surfaces.East[-1][4] int 1 run scoreboard players get $entity_y1 vdv_iris
execute store result storage vdv_iris:data Surfaces.East[-1][5] int 1 run scoreboard players get $entity_z1 vdv_iris

execute store result storage vdv_iris:data Surfaces.North[-1][0] int 1 run scoreboard players get $entity_x0 vdv_iris
execute store result storage vdv_iris:data Surfaces.North[-1][1] int 1 run scoreboard players get $entity_y0 vdv_iris
execute store result storage vdv_iris:data Surfaces.North[-1][2] int 1 run scoreboard players get $entity_z0 vdv_iris
execute store result storage vdv_iris:data Surfaces.North[-1][3] int 1 run scoreboard players get $entity_x1 vdv_iris
execute store result storage vdv_iris:data Surfaces.North[-1][4] int 1 run scoreboard players get $entity_y1 vdv_iris
execute store result storage vdv_iris:data Surfaces.North[-1][5] int 1 run scoreboard players get $entity_z0 vdv_iris

execute store result storage vdv_iris:data Surfaces.South[-1][0] int 1 run scoreboard players get $entity_x0 vdv_iris
execute store result storage vdv_iris:data Surfaces.South[-1][1] int 1 run scoreboard players get $entity_y0 vdv_iris
execute store result storage vdv_iris:data Surfaces.South[-1][2] int 1 run scoreboard players get $entity_z1 vdv_iris
execute store result storage vdv_iris:data Surfaces.South[-1][3] int 1 run scoreboard players get $entity_x1 vdv_iris
execute store result storage vdv_iris:data Surfaces.South[-1][4] int 1 run scoreboard players get $entity_y1 vdv_iris
execute store result storage vdv_iris:data Surfaces.South[-1][5] int 1 run scoreboard players get $entity_z1 vdv_iris

# Special case for item frames and paintings which are annoying
execute if score $entity_found vdv_iris matches 0 store success score $entity_found vdv_iris store success score $entity.is_item_frame vdv_iris if entity @s[type=#vdv_iris:item_frames]
execute if score $entity.is_item_frame vdv_iris matches 1 run function vdv_iris:get_hitbox/entity/item_frame

# Give this entity a tag and an ID
tag @s add vdv_iris.possible_target
scoreboard players operation @s vdv_iris.id = $max vdv_iris.id
scoreboard players add $max vdv_iris.id 1