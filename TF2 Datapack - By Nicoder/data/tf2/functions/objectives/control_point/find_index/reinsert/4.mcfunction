#> tf2:objectives/control_point/find_index/reinsert/4
#
# @context CP entity
# @within tf2:objectives/control_point/find_index/reinsert/main

execute if score @s tf2.index matches 0 run data modify storage tf2:control_points data[4][0] set from storage tf2.__temp__:lookup points[0]
execute if score @s tf2.index matches 10 run data modify storage tf2:control_points data[4][1] set from storage tf2.__temp__:lookup points[0]
execute if score @s tf2.index matches 20 run data modify storage tf2:control_points data[4][2] set from storage tf2.__temp__:lookup points[0]
execute if score @s tf2.index matches 30 run data modify storage tf2:control_points data[4][3] set from storage tf2.__temp__:lookup points[0]
execute if score @s tf2.index matches 40 run data modify storage tf2:control_points data[4][4] set from storage tf2.__temp__:lookup points[0]
execute if score @s tf2.index matches 50 run data modify storage tf2:control_points data[4][5] set from storage tf2.__temp__:lookup points[0]
execute if score @s tf2.index matches 60 run data modify storage tf2:control_points data[4][6] set from storage tf2.__temp__:lookup points[0]
execute if score @s tf2.index matches 70 run data modify storage tf2:control_points data[4][7] set from storage tf2.__temp__:lookup points[0]