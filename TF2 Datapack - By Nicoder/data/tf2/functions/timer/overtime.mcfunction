tag @s add tf2.overtime
scoreboard players set @s tf2.timer 1200
$bossbar set tf2:timer_$(i) color red
function tf2:timer/set_max with storage tf2:__temp__.args