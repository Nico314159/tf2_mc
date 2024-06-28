tag @s remove tf2.overtime
$bossbar set tf2:timer_$(i) color white
$execute store result score @s tf2.max_timer run data get storage tf2:running_games $(i).timer 20
function tf2:timer/set_max with storage tf2:index
function tf2:timer/set_value with storage tf2:index