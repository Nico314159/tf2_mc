#> tf2:objectives/control_point/unlock
#
# @within tf2:objectives/control_point/on_capture/**

tag @s remove tf2.locked
function tf2:objectives/control_point/find_index/main
data modify storage tf2.__temp__:lookup points[0].symbol set value '[{"text":"320#)@","font":"tf2:square"}]'
function tf2:objectives/control_point/find_index/reinsert/main