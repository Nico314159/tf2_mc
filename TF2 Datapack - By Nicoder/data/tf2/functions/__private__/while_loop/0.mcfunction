scoreboard players remove $temp tf2.index 10
summon marker ~ ~ ~ {Tags:["tf2.new"]}
execute as @e[tag=tf2.new,limit=1] run function tf2:__private__/anonymous/2
data remove storage tf2.__temp__:summon objectives[-1]
execute if data storage tf2.__temp__:summon objectives[] run function tf2:__private__/while_loop/0