#> tf2:objectives/control_point/find_index/reinsert
#
# @within
#   tf2:objectives/control_point/**
#   tf2:reset/**
# @context CP entity
# @input
#   score $local tf2.batch_number
#   score @s tf2.index
#       Storage address of the current control point and the game it belongs to.
#   storage tf2.__temp__:lookup points[0]
#       Edited copy of data in the `tf2:control_points info[$local...][@s tf2.index]` storage path.
# @writes     
#   storage tf2:control_points info[$local...][@s tf2.index]
#       Where all visual data related to the current CP is stored.
#       See `tf2:objectives/control_point/find_index/main` comments for specific information.
scoreboard players operation $mini_index tf2.var = @s tf2.index
scoreboard players operation $mini_index tf2.var /= 10 tf2.const
function tf2:__private__/hardcode_switch/139