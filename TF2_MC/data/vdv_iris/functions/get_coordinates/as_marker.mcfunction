#> vdv_iris:get_coordinates/as_marker
#
# Gets the current coordinates and rotation using a marker.
#
# @context a marker entity at context position and a rotation
# @within vdv_iris:get_coordinates/main

# Get position (integer coordinates)
data modify storage vdv_iris:data Pos set from entity @s Pos
execute store result score $[x] vdv_iris run data get storage vdv_iris:data Pos[0]
execute store result score $[y] vdv_iris run data get storage vdv_iris:data Pos[1]
execute store result score $[z] vdv_iris run data get storage vdv_iris:data Pos[2]

# Get position (fractional coordinates)
scoreboard players set ${x} vdv_iris 0
execute store result score ${y} vdv_iris run data get storage vdv_iris:data Pos[1] 1000000
scoreboard players operation ${y} vdv_iris %= $1000000 vdv_iris
scoreboard players set ${z} vdv_iris 0
execute align x run function vdv_iris:get_coordinates/x/0
execute align z run function vdv_iris:get_coordinates/z/0

# Get rotation
execute positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1000000
data modify storage vdv_iris:data Pos set from entity @s Pos
execute store result score $dx vdv_iris run data get storage vdv_iris:data Pos[0]
execute store result score $dy vdv_iris run data get storage vdv_iris:data Pos[1]
execute store result score $dz vdv_iris run data get storage vdv_iris:data Pos[2]

# Clean up
data remove storage vdv_iris:data Pos
kill @s