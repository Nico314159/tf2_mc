execute store result storage tf2.__temp__:index i int 1 run scoreboard players get $local tf2.batch_number
execute store result storage tf2.__temp__:index j int 0.1 run scoreboard players get @s tf2.index
scoreboard players set $_access_mode_ tf2.var 1
function tf2:objectives/control_point/find_index/private with storage tf2.__temp__:index