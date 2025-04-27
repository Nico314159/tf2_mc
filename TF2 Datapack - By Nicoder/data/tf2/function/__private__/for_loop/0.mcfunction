scoreboard players set $j tf2.var 0
execute if score $j tf2.var < $vertical_count tf2.var run function tf2:__private__/for_loop/1
scoreboard players add $i tf2.var 10
execute if score $i tf2.var < $horizontal_count tf2.var run function tf2:__private__/for_loop/0