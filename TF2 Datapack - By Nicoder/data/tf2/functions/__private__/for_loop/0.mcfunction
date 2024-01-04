function retina:traverse/multicast
scoreboard players add $_ tf2.var 1
execute if score $_ tf2.var matches ..3 run function tf2:__private__/for_loop/0