function tf2:objectives/control_point/find_index/main
data modify storage tf2:lookup points[0].owner set value '[""]'
data modify storage tf2:lookup points[0].progress set value '[""]'
data modify storage tf2:lookup points[0].symbol set value '[""]'
data modify storage tf2:lookup points[0].extra set value '[""]'
function tf2:objectives/control_point/find_index/reinsert
kill @s