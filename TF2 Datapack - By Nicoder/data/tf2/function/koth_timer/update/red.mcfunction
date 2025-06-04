scoreboard players remove @s tf2.red_timer 1
$execute store result bossbar tf2:red_timer_$(i) value run scoreboard players get @s tf2.red_timer
scoreboard players operation @s tf2.red_timer.sec = @s tf2.red_timer
scoreboard players add @s tf2.red_timer.sec 19
scoreboard players operation @s tf2.red_timer.sec /= 20 tf2.const
scoreboard players operation @s tf2.red_timer.min = @s tf2.red_timer.sec
scoreboard players operation @s tf2.red_timer.min /= 60 tf2.const
scoreboard players operation @s tf2.red_timer.sec %= 60 tf2.const