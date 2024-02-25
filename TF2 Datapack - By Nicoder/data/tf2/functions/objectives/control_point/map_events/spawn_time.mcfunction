say spawn_time
data modify storage tf2.__temp__:index red set value 0
data modify storage tf2.__temp__:index red set from storage tf2.__temp__:lookup events.spawn_time.red
data modify storage tf2.__temp__:index blu set value 0
data modify storage tf2.__temp__:index blu set from storage tf2.__temp__:lookup events.spawn_time.blu
function tf2:__private__/anonymous/35 with storage tf2.__temp__:index