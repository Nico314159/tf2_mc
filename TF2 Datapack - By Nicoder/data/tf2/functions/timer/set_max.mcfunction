#> tf2:timer/set_max
#
# @within
#   tf2:start_game/as_marker/main
#   tf2:timer/overtime
#   tf2:timer/begin_setup
#   tf2:timer/exit_setup

execute store result bossbar tf2:timer_1 max run scoreboard players get @s[scores={tf2.batch_number=1}] tf2.timer
execute store result bossbar tf2:timer_2 max run scoreboard players get @s[scores={tf2.batch_number=2}] tf2.timer
execute store result bossbar tf2:timer_3 max run scoreboard players get @s[scores={tf2.batch_number=3}] tf2.timer
execute store result bossbar tf2:timer_4 max run scoreboard players get @s[scores={tf2.batch_number=4}] tf2.timer
execute store result bossbar tf2:timer_5 max run scoreboard players get @s[scores={tf2.batch_number=5}] tf2.timer
function tf2:timer/set_value