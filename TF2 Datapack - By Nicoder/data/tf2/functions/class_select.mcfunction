clear @s
scoreboard players set __found_case__ tf2.var 0
execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get @s tf2.class
function tf2:__private__/switch_case/4/select with storage tf2:__storage__
execute unless score __found_case__ tf2.var matches 1 run function tf2:__private__/switch_case/4/default