$execute if entity @s[tag=tf2.$(name)_overtime] run return 0
execute if entity @s[tag=tf2.ended] run return 0
$scoreboard players operation $ticksCopy tf2.var = @s tf2.$(name)_timer
scoreboard players remove $ticksCopy tf2.var 1
scoreboard players operation $secondsCopy tf2.var = $ticksCopy tf2.var
scoreboard players add $secondsCopy tf2.var 19
scoreboard players operation $secondsCopy tf2.var /= 20 tf2.const
scoreboard players operation $minutesCopy tf2.var = $secondsCopy tf2.var
scoreboard players operation $secondsCopy tf2.var %= 60 tf2.const
scoreboard players operation $minutesCopy tf2.var /= 60 tf2.const
$execute store result bossbar tf2:$(name)_timer_$(i) value run scoreboard players get $ticksCopy tf2.var
$scoreboard players operation @s tf2.$(name)_timer = $ticksCopy tf2.var
$scoreboard players operation @s tf2.$(name)_timer.sec = $secondsCopy tf2.var
$scoreboard players operation @s tf2.$(name)_timer.min = $minutesCopy tf2.var