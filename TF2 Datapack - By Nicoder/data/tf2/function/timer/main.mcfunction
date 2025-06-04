execute if score @s tf2.gamemode matches 3 run return run function tf2:koth_timer/main
execute store result storage tf2:index i int 1 run scoreboard players get @s tf2.batch_number
scoreboard players remove @s[tag=!tf2.overtime] tf2.timer 1
function tf2:timer/set_value with storage tf2:index
scoreboard players operation @s tf2.timer.sec = @s tf2.timer
scoreboard players add @s tf2.timer.sec 19
scoreboard players operation @s tf2.timer.sec /= 20 tf2.const
scoreboard players operation @s tf2.timer.sec > 0 tf2.const
scoreboard players operation @s tf2.timer.min = @s tf2.timer.sec
scoreboard players operation @s tf2.timer.min /= 60 tf2.const
scoreboard players operation @s tf2.timer.sec %= 60 tf2.const
execute if entity @s[tag=!tf2.multistage,tag=!tf2.overtime,tag=!tf2.setup_time] run function tf2:timer/display/singlestage with storage tf2:index
execute if entity @s[tag=tf2.setup_time] run function tf2:timer/display/setup_time with storage tf2:index
execute if entity @s[tag=tf2.overtime] run function tf2:timer/display/overtime with storage tf2:index
execute if score @s tf2.timer matches ..1200 run function tf2:timer/chat
execute if score @s[tag=tf2.setup_time] tf2.timer matches 0 run function tf2:timer/exit_setup with storage tf2:index
execute if score @s[tag=!tf2.setup_time] tf2.timer matches 0 run function tf2:timer/zero with storage tf2:index
execute if score @s tf2.timer matches -100 run function tf2:reset/as_marker