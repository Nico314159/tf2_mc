tag @s remove tf2.overtime
scoreboard players add @s tf2.timer 1
$bossbar set tf2:timer_$(i) color white
$execute store result score @s tf2.max_timer run data get storage tf2:running_games $(i).timer 20
$tag @e[type=item_display,tag=tf2.control_point,scores={tf2.batch_number=$(i)}] remove tf2.overtime
function tf2:timer/set_max with storage tf2:index
function tf2:timer/set_value with storage tf2:index