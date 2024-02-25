execute store result storage tf2.__temp__:index i int 1 run scoreboard players get $local tf2.batch_number
execute store result storage tf2.__temp__:index j int 0.1 run scoreboard players get @s tf2.index
function tf2:__private__/anonymous/33 with storage tf2.__temp__:index
execute if data storage tf2.__temp__:lookup {events:{spawn_point:{}}} run function tf2:objectives/control_point/map_events/spawn_point
execute if data storage tf2.__temp__:lookup {events:{spawn_time:{}}} run function tf2:objectives/control_point/map_events/spawn_time