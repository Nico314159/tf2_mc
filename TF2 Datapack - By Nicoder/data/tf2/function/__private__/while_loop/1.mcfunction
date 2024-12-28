execute summon marker run function tf2:__private__/anonymous/16 with storage tf2:index
data remove storage tf2:summon doors[-1]
scoreboard players add $i tf2.var 1
execute if data storage tf2:summon doors[] run function tf2:__private__/while_loop/1