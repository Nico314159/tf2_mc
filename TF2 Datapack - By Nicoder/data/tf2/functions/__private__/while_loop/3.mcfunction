execute summon item_display run function tf2:__private__/anonymous/20
data remove storage tf2.__temp__:summon resupply[-1]
scoreboard players add $i tf2.var 1
execute if data storage tf2.__temp__:summon resupply[] run function tf2:__private__/while_loop/3