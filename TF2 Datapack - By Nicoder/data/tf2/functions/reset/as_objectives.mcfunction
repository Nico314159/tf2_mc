#> tf2:reset/as_objectives
#
# Resets all objective data when a match ends and kills the objectives.
#
# @within tf2:reset/announce_winner
# @context all CP entities within a batch
# @handles game reset
# @writes
#   storage tf2.__temp__:lookup points[0].(owner/progress/symbol/extra)
#       Resets visual data relating to this point's state.
setblock ~ ~-1 ~ glass
setblock ~ ~ ~ air
function tf2:objectives/control_point/find_index/main
data modify storage tf2.__temp__:lookup points[0].owner set value "[\"\"]"
data modify storage tf2.__temp__:lookup points[0].progress set value "[\"\"]"
data modify storage tf2.__temp__:lookup points[0].symbol set value "[\"\"]"
data modify storage tf2.__temp__:lookup points[0].extra set value "[\"\"]"
function tf2:objectives/control_point/find_index/reinsert
kill @s