execute if score $red_on_point tf2.var matches 1.. unless score @s tf2.team matches 1 run return 0
execute if score $blu_on_point tf2.var matches 1.. unless score @s tf2.team matches 2 run return 0
function tf2:objectives/control_point/decay/main