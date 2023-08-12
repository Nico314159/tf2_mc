scoreboard players set @s tf2.index 70
function tf2:objectives/control_point/find_index/main
scoreboard players operation $temp tf2.var = $highest tf2.index
scoreboard players operation $temp tf2.var /= 10 tf2.const
scoreboard players add $temp tf2.var 1
function tf2:__private__/switch_case/34
function tf2:objectives/control_point/find_index/reinsert
scoreboard players operation @s tf2.index = $temp tf2.var