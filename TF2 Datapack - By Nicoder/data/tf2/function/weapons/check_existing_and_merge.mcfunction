execute unless data storage tf2:lookup damages[] run return 0
execute store result score $temp tf2.var run data get storage tf2:lookup damages[-1].cause
execute unless score $temp tf2.var = $cause tf2.var run return 0
execute store result score $temp tf2.var run data get storage tf2:lookup damages[-1].target
execute unless score $temp tf2.var = $target tf2.var run return 0
execute store result score $temp tf2.var run data get storage tf2:lookup damages[-1].amount
scoreboard players operation $temp tf2.var += $_finalDamage_ tf2.var
execute store result storage tf2:lookup damages[-1].amount int 1 run scoreboard players get $temp tf2.var
return 1