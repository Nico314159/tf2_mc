#> tf2:start_game/as_marker/set_nbt
#
# @within tf2:start_game/as_marker/loop
# @context marker summoned by the loop function
# @input
#   storage tf2.__temp__:summon objectives[0].Pos
#       Position where the objective is located on the map
#   storage tf2.__temp__:summon objectives[0].Tags
#       Includes what type of objective it is (control point, intelligence, payload cart, etc.)
#   storage tf2.__temp__:summon objectives[0].data
#       Dynamic info like capture progress or whether the objective is locked

data modify entity @s Pos set from storage tf2.__temp__:summon objectives[0].Pos 
data modify entity @s Tags set from storage tf2.__temp__:summon objectives[0].Tags
data modify entity @s data set from storage tf2.__temp__:summon objectives[0].data 
# this final line may not be necessary 
tag @s remove tf2.new