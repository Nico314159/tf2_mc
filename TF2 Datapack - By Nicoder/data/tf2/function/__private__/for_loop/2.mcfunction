function tf2:raycast/damaging
scoreboard players add $k tf2.var 1
execute if score $k tf2.var < $centered_count tf2.var run function tf2:__private__/for_loop/2