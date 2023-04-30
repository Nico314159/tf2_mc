#> tf2:objectives/control_point/find_index/reinsert/main
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
#       Edited copy of data in the `tf2:control_points data[$local...][@s tf2.index]` storage path.
# @writes     
#   storage tf2:control_points data[$local...][@s tf2.index]
#       Where all visual data related to the current CP is stored.
#       See `tf2:objectives/control_point/find_index/main` comments for specific information.

execute if score $local tf2.batch_number matches 1 run function tf2:objectives/control_point/find_index/reinsert/1
execute if score $local tf2.batch_number matches 2 run function tf2:objectives/control_point/find_index/reinsert/2
execute if score $local tf2.batch_number matches 3 run function tf2:objectives/control_point/find_index/reinsert/3
execute if score $local tf2.batch_number matches 4 run function tf2:objectives/control_point/find_index/reinsert/4
execute if score $local tf2.batch_number matches 5 run function tf2:objectives/control_point/find_index/reinsert/5