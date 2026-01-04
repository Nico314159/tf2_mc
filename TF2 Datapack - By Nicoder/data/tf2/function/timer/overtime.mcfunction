tag @s add tf2.overtime
scoreboard players set @s tf2.timer 1
$tellraw @a[scores={tf2.batch_number=$(i)}] "Overtime."
$bossbar set tf2:timer_$(i) color red
function tf2:timer/set_max with storage tf2:index