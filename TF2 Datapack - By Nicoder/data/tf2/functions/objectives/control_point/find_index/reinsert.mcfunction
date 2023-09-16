scoreboard players operation $mini_index tf2.var = @s tf2.index
scoreboard players operation $mini_index tf2.var /= 10 tf2.const
execute store result storage tf2:__storage__ switch_key int 1 run scoreboard players get $local tf2.batch_number
function tf2:__private__/hardcode_switch/11/select with storage tf2:__storage__