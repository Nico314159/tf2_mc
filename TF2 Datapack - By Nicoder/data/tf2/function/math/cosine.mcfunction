scoreboard players operation $output tf2.var = $input tf2.var
scoreboard players remove $output tf2.var 900
scoreboard players operation $output tf2.var %= 1800 tf2.const
scoreboard players remove $output tf2.var 900
scoreboard players operation $output tf2.var *= $output tf2.var
scoreboard players operation $trig_0 tf2.var = $output tf2.var
scoreboard players add $trig_0 tf2.var 3240000
scoreboard players operation $trig_0 tf2.var /= 1000 tf2.const
scoreboard players operation $output tf2.var *= -4 tf2.const
scoreboard players add $output tf2.var 3240000
scoreboard players operation $output tf2.var /= $trig_0 tf2.var
scoreboard players operation $trig_0 tf2.var = $input tf2.var
scoreboard players add $trig_0 tf2.var 900
scoreboard players operation $trig_0 tf2.var %= 3600 tf2.const
execute if score $trig_0 tf2.var matches 1800.. run scoreboard players operation $output tf2.var *= -1 tf2.const