data remove storage iris:settings Callback
data merge storage iris:settings {MaxRecursionDepth:127,TargetEntities:true}
execute unless data storage tf2:raycast direction run return run execute at @s anchored eyes positioned ^ ^ ^ run function iris:get_target
function tf2:raycast/contact with storage tf2:raycast direction