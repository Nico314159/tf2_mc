execute store result storage tf2:index i int 1 run scoreboard players get $local tf2.batch_number
execute store result storage tf2:index j int 0.1 run scoreboard players get @s tf2.index
function tf2:__private__/anonymous/26 with storage tf2:index
execute if data storage tf2:lookup {events:{spawn_point:{}}} run function tf2:objectives/control_point/map_events/spawn_point
execute if data storage tf2:lookup {events:{spawn_time:{}}} run function tf2:objectives/control_point/map_events/spawn_time
execute if data storage tf2:lookup events.doors[] run function tf2:__private__/while_loop/5