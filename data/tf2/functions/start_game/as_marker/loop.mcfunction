#> tf2:start_game/as_marker/loop
#
# Summons the map objectives from storage.
#
# @within
#   tf2:start_game/as_marker/main
#   tf2:start_game/as_marker/loop
# @context a marker (same as tf2:start_game/as_marker/main)
# @input
#   storage tf2.__temp__:summon objectives[]
#       The list of objective entities to summon for the current game.

summon marker ~ ~ ~ {Tags:["tf2.new"]}
execute as @e[tag=tf2.new,limit=1] run function tf2:start_game/as_marker/set_nbt
data remove storage tf2.__temp__:summon objectives[0]
execute if data storage tf2.__temp__:summon objectives[] run function tf2:start_game/as_marker/loop