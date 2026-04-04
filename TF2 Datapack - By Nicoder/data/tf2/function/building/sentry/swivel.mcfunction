scoreboard players operation $w tf2.var = @s tf2.sentry.ticks_idle
scoreboard players add $w tf2.var 10
scoreboard players operation $w tf2.var %= 40 tf2.const
scoreboard players operation $p tf2.var = $w tf2.var
scoreboard players operation $w tf2.var *= -1 tf2.const
scoreboard players add $w tf2.var 40
scoreboard players operation $p tf2.var < $w tf2.var
scoreboard players operation $w tf2.var = $p tf2.var
scoreboard players operation $p tf2.var *= $w tf2.var
scoreboard players operation $yaw tf2.var = $p tf2.var
scoreboard players operation $yaw tf2.var *= 135 tf2.const
scoreboard players operation $yaw tf2.var /= 2 tf2.const
scoreboard players operation $p tf2.var *= $w tf2.var
scoreboard players operation $p tf2.var *= 9 tf2.const
scoreboard players operation $p tf2.var /= 4 tf2.const
scoreboard players operation $yaw tf2.var -= $p tf2.var
scoreboard players remove $yaw tf2.var 4500
scoreboard players operation $yaw tf2.var += @s tf2.sentry.last_yaw
execute store result entity @s Rotation[0] double 0.01 run scoreboard players get $yaw tf2.var
scoreboard players add @s tf2.sentry.ticks_idle 1
return 0