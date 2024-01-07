scoreboard players remove $temp tf2.index 10
execute summon marker run function tf2:__private__/anonymous/14 with storage tf2.__temp__:index
data remove storage tf2.__temp__:summon objectives[-1]
execute if data storage tf2.__temp__:summon objectives[] run function tf2:__private__/while_loop/0