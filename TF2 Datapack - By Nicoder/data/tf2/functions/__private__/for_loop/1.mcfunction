scoreboard players set $add tf2.var 1000
scoreboard players operation $add tf2.var /= $index tf2.var
scoreboard players operation $sum tf2.var += $add tf2.var
scoreboard players add $index tf2.var 1
execute if score $index tf2.var <= $bound tf2.var run function tf2:__private__/for_loop/1