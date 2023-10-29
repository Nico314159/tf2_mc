clear @s
execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get @s tf2.class
function tf2:__private__/switch_case/0/select with storage tf2:__storage__