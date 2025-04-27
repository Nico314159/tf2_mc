scoreboard players set $sum tf2.var 0
scoreboard players set $index tf2.var 1
execute if score $index tf2.var <= $bound tf2.var run function tf2:__private__/for_loop/3