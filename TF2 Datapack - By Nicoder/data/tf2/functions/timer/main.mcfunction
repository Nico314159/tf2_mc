#> tf2:timer/main
#
# @handles timer mechanic
# @context marker
# @within tf2:tick

scoreboard players remove @s tf2.timer 1
function tf2:timer/set_value

scoreboard players operation @s tf2.timer.sec = @s tf2.timer
scoreboard players operation @s tf2.timer.sec /= $20 tf2.const
scoreboard players operation @s tf2.timer.min = @s tf2.timer.sec
scoreboard players operation @s tf2.timer.sec %= $60 tf2.const
scoreboard players operation @s tf2.timer.min /= $60 tf2.const
execute if entity @s[tag=!tf2.multistage,tag=!tf2.overtime,tag=!tf2.setup_time] run function tf2:timer/display/singlestage
#execute if entity @s[tag=tf2.multistage,tag=!tf2.overtime,tag=!tf2.setup_time] run function tf2:timer/display/multistage
execute if entity @s[tag=tf2.setup_time] run function tf2:timer/display/setup_time
execute if entity @s[tag=tf2.overtime] run function tf2:timer/display/overtime

execute if score @s tf2.timer matches ..1200 run function tf2:timer/chat
execute if score @s[tag=tf2.setup_time] tf2.timer matches 0 run function tf2:timer/exit_setup
execute if score @s[tag=!tf2.setup_time] tf2.timer matches 0 run function tf2:timer/zero
execute if score @s tf2.timer matches -100 run function tf2:reset/as_marker