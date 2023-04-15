setblock ~ ~-1 ~ glass
setblock ~ ~ ~ air
function tf2:objectives/control_point/find_index/main
data modify storage tf2.__temp__:lookup points[0].owner set value '[""]'
data modify storage tf2.__temp__:lookup points[0].progress set value '[""]'
data modify storage tf2.__temp__:lookup points[0].symbol set value '[""]'
data modify storage tf2.__temp__:lookup points[0].extra set value '[""]'
function tf2:objectives/control_point/find_index/reinsert/main
kill @s