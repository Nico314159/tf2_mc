data modify storage tf2:index red set value 0
data modify storage tf2:index red set from storage tf2:lookup events.spawn_time.red
data modify storage tf2:index blu set value 0
data modify storage tf2:index blu set from storage tf2:lookup events.spawn_time.blu
function tf2:__private__/anonymous/25 with storage tf2:index