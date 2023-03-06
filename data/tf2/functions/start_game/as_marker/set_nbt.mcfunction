#> tf2:start_game/as_marker/set_nbt
#
# @within tf2:start_game/as_marker/loop
# @context marker summoned by the loop function
# @input
#   storage tf2.__temp__:summon objectives[0].Pos
#       Position where the objective is located on the map
#   storage tf2.__temp__:summon objectives[0].Tags
#       Includes what type of objective it is (control point, intelligence, payload cart, etc.)
#   storage tf2.__temp__:summon objectives[0].data.locked
#       Whether the objective should start out locked
#   storage tf2.__temp__:summon objectives[0].data.capture_threshold
#       Amount of time to capture the objective (NBT form is seconds, score form is milliticks)

data modify entity @s Pos set from storage tf2.__temp__:summon objectives[0].Pos 
data modify entity @s Tags set from storage tf2.__temp__:summon objectives[0].Tags
execute store result score @s tf2.capture_threshold run data get storage tf2.__temp__:summon objectives[0].data.capture_threshold 20000
execute store result score @s tf2.locked run data get storage tf2.__temp__:summon objectives[0].data.locked
# this final line may not be necessary 
tag @s remove tf2.new