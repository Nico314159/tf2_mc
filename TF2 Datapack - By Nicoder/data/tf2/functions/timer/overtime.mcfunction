#> tf2:timer/overtime
#
# @context marker
# @within tf2:timer/zero

tag @s add tf2.overtime
scoreboard players set @s tf2.timer 1200
execute if score @s tf2.batch_number matches 1 run bossbar set tf2:timer_1 color red
execute if score @s tf2.batch_number matches 2 run bossbar set tf2:timer_2 color red
execute if score @s tf2.batch_number matches 3 run bossbar set tf2:timer_3 color red
execute if score @s tf2.batch_number matches 4 run bossbar set tf2:timer_4 color red
execute if score @s tf2.batch_number matches 5 run bossbar set tf2:timer_5 color red
function tf2:timer/set_max