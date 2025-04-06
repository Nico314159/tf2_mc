scoreboard players set @s tf2.index 70
function tf2:objectives/control_point/find_index/main
scoreboard players operation $temp tf2.var = $highest tf2.index
scoreboard players operation $temp tf2.var /= 10 tf2.const
scoreboard players add $temp tf2.var 1
execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get $temp tf2.var
function tf2:__private__/switch_case/8/select with storage tf2:__storage__
function tf2:objectives/control_point/find_index/reinsert
scoreboard players operation @s tf2.index = $temp tf2.var