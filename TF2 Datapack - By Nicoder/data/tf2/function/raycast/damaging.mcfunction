data modify storage iris:settings Callback set value 'tf2:weapons/on_hit'
execute unless data storage tf2:raycast direction run return run function iris:get_target
function tf2:raycast/contact with storage tf2:raycast direction