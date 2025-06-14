function tf2:session/increment_global with storage tf2:index
function tf2:session/sync with storage tf2:index
$data modify entity @s data.map set from storage tf2:maps $(map_id)
$data modify storage tf2:running_games $(i) set from storage tf2:maps $(map_id)