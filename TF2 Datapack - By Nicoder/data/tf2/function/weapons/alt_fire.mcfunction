function tf2:swap_hands
execute store result score $_weaponID_ tf2.var run data get entity @s SelectedItem.components.minecraft:custom_data.key[0] 10
execute store result score $temp tf2.var run data get entity @s SelectedItem.components.minecraft:custom_data.key[1]
scoreboard players operation $_weaponID_ tf2.var += $temp tf2.var
scoreboard players set __found_case__ tf2.var 0
execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get $_weaponID_ tf2.var
function tf2:__private__/switch_case/3/select with storage tf2:__storage__
execute unless score __found_case__ tf2.var matches 1 run function tf2:__private__/switch_case/3/default